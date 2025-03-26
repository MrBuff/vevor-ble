ARG BUILD_FROM
FROM $BUILD_FROM

# Installiere Systemabhängigkeiten
RUN apk add --no-cache \
    python3 \
    py3-paho-mqtt \
    py3-pip \
    bluez \
    bluez-dev \
    build-base \
    linux-headers \
    eudev

# Bluetooth-Dienste aktivieren
#RUN rc-update add bluetooth default

# Arbeitsverzeichnis setzen
WORKDIR /app

# Liste Dateien im Verzeichnis
RUN ls -la /app

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]