# Vevor BLE Bridge Add-on für Home Assistant

Dieses Add-on ermöglicht die Verbindung von Vevor-Geräten mit Home Assistant über Bluetooth Low Energy (BLE).

## Installation

1. Gehe in Home Assistant zu **Einstellungen** → **Add-ons** → **Add-on Store**
2. Klicke auf die drei Punkte in der oberen rechten Ecke und wähle **Repositories**
3. Füge die URL deines Add-on-Repositories hinzu
4. Suche nach "Vevor BLE Bridge" und installiere es

## Konfiguration

| Option | Beschreibung |
|--------|-------------|
| mqtt_host | MQTT-Broker-Host (Standard: core-mosquitto) |
| mqtt_port | MQTT-Broker-Port (Standard: 1883) |
| mqtt_username | MQTT-Benutzername (falls benötigt) |
| mqtt_password | MQTT-Passwort (falls benötigt) |
| mqtt_topic | MQTT-Thema-Präfix (Standard: vevor) |
| scan_interval | Scan-Intervall in Sekunden (Standard: 60) |

## Verwendung

Nach der Installation und Konfiguration werden deine Vevor-Geräte automatisch erkannt und über MQTT an Home Assistant übermittelt.

## Hinweise

- Stellen Sie sicher, dass Bluetooth auf Ihrem Home Assistant-Host aktiviert ist
- Für die vollständige Funktionalität wird ein MQTT-Broker benötigt