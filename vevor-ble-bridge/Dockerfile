ARG BUILD_FROM
FROM $BUILD_FROM

# Installiere Systemabhängigkeiten
#RUN apk add --no-cache \
#    python3 \
#    py3-pip \
#    git \
#    bluez \
#    bluez-dev \
#    build-base \
#    linux-headers \
#    eudev \

# Bluetooth-Dienste aktivieren
#RUN rc-update add bluetooth default

# Arbeitsverzeichnis setzen
WORKDIR /app

# Code aus dem Repository klonen
#RUN git clone https://github.com/bderleta/vevor-ble-bridge.git /app/vevor-ble-bridge

# Kopiere Abhängigkeiten und installiere sie
RUN pip install --no-cache-dir -r /requirements.txt

# Skripte und Laufzeitdateien kopieren
COPY run.sh /app/

# Skripte ausführbar machen
RUN chmod +x /app/run.sh

# Standardkommando
CMD [ "/run.sh" ]
