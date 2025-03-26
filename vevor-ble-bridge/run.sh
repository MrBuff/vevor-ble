#!/usr/bin/with-contenv bashio

# Finde die erste Python-Hauptdatei
MAIN_SCRIPT=$(find /app -maxdepth 1 -name "*.py" | grep -E "main" | head -n 1)

if [ -z "$MAIN_SCRIPT" ]; then
    bashio::log.error "Keine Hauptskript-Datei gefunden!"
    exit 1
fi

 #Bluetooth-Dienst starten
bashio::log.info "Starte Bluetooth-Dienst..."
bluetoothctl power on || bashio::log.warning "Konnte Bluetooth nicht einschalten"

# Konfiguration aus den Add-on-Optionen auslesen
MQTT_HOST=$(bashio::config 'mqtt_host')
MQTT_PORT=$(bashio::config 'mqtt_port')
MQTT_USERNAME=$(bashio::config 'mqtt_username')
MQTT_PASSWORD=$(bashio::config 'mqtt_password')
MQTT_TOPIC=$(bashio::config 'mqtt_topic')
SCAN_INTERVAL=$(bashio::config 'scan_interval')


bashio::log.info "Config fertig gelesen"

# Starte die Bridge
cd /app
bashio::log.info "Starte Vevor BLE Bridge mit Skript: $MAIN_SCRIPT .... logging to mqtt server $(bashio::config 'mqtt_host')"
# Starte das Python-Skript
python3 "$MAIN_SCRIPT"