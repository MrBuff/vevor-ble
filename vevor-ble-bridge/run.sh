#!/usr/bin/with-contenv bashio

# Bluetooth-Dienst starten
bashio::log.info "Starte Bluetooth-Dienst..."
bluetoothctl power on || bashio::log.warning "Konnte Bluetooth nicht einschalten"

# Konfiguration aus den Add-on-Optionen auslesen
#MQTT_HOST=$(bashio::config 'mqtt_host')
#MQTT_PORT=$(bashio::config 'mqtt_port')
#MQTT_USERNAME=$(bashio::config 'mqtt_username')
#MQTT_PASSWORD=$(bashio::config 'mqtt_password')
#MQTT_TOPIC=$(bashio::config 'mqtt_topic')
#SCAN_INTERVAL=$(bashio::config 'scan_interval')

# Konfiguration aus options.json lesen
export MQTT_HOST=$(jq --raw-output '.mqtt_host' /data/options.json)
export MQTT_PORT=$(jq --raw-output '.mqtt_port' /data/options.json)
export MQTT_USERNAME=$(jq --raw-output '.mqtt_username' /data/options.json)
export MQTT_PASSWORD=$(jq --raw-output '.mqtt_password' /data/options.json)



# Starte die Bridge
cd /app
bashio::log.info "Starte Vevor BLE Bridge..."
# Starte das Python-Skript
python3 /app/vevor-ble-bridge/main.py
