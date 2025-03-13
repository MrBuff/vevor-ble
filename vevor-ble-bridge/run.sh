#!/usr/bin/with-contenv bashio

# Konfiguration aus den Add-on-Optionen auslesen
MQTT_HOST=$(bashio::config 'mqtt_host')
MQTT_PORT=$(bashio::config 'mqtt_port')
MQTT_USERNAME=$(bashio::config 'mqtt_username')
MQTT_PASSWORD=$(bashio::config 'mqtt_password')
MQTT_TOPIC=$(bashio::config 'mqtt_topic')
SCAN_INTERVAL=$(bashio::config 'scan_interval')

# Konfigurationsdatei erstellen
cat > /app/config.json << EOF
{
  "mqtt": {
    "host": "${MQTT_HOST}",
    "port": ${MQTT_PORT},
    "username": "${MQTT_USERNAME}",
    "password": "${MQTT_PASSWORD}",
    "topic": "${MQTT_TOPIC}"
  },
  "scanInterval": ${SCAN_INTERVAL}
}
EOF

# Bluetooth-Dienst starten
bashio::log.info "Starte Bluetooth-Dienst..."
hciconfig hci0 up || bashio::log.warning "Konnte Bluetooth nicht starten"

# Starte die Bridge
cd /app
bashio::log.info "Starte Vevor BLE Bridge..."
node index.js