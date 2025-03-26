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
    eudev \
    py3-paho-mqtt \

# Bluetooth-Dienste aktivieren
#RUN rc-update add bluetooth default

# Arbeitsverzeichnis setzen
WORKDIR /app

# Code aus dem Repository klonen
#RUN git clone https://github.com/bderleta/vevor-ble-bridge.git /app/vevor-ble-bridge

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]