ARG BUILD_FROM
FROM $BUILD_FROM

# Installiere benötigte Pakete
RUN apk add --no-cache \
    python3 \
    py3-pip \
    git \
    bluez \
    bluez-tools \
    bluez-dev \
    build-base \
    linux-headers \
    eudev

# Bluetooth-Dienste aktivieren
RUN rc-update add bluetooth default

# Arbeitsverzeichnis setzen
WORKDIR /app

# Kopiere das Repository
RUN git clone https://github.com/bderleta/vevor-ble-bridge.git /app

# Installiere Python-Abhängigkeiten aus requirements.txt
RUN pip3 install --no-cache-dir -r /app/requirements.txt

# Kopiere das Startskript
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]