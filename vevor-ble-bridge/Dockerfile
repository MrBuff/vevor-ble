ARG BUILD_FROM
FROM $BUILD_FROM

# Installiere Systemabhängigkeiten
RUN apk add --no-cache \
    python3 \
    py3-pip \
    git \
    bluez \
    bluez-dev \
    build-base \
    linux-headers \
    eudev

# Bluetooth-Dienste aktivieren
#RUN rc-update add bluetooth default

# Arbeitsverzeichnis festlegen
WORKDIR /app

# Kopiere das Repository
RUN git clone https://github.com/bderleta/vevor-ble-bridge.git /app

# Installiere Python-Abhängigkeiten aus requirements.txt
RUN pip3 install --no-cache-dir -r /app/requirements.txt

# Skripte und Laufzeitdateien kopieren
COPY run.sh /app/

# Skripte ausführbar machen
RUN chmod +x /app/run.sh

# Standardkommando
CMD ["/run.sh"]
