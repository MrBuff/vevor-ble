ARG BUILD_FROM
FROM $BUILD_FROM

# Installiere benötigte Pakete
RUN apk add --no-cache \
    nodejs \
    npm \
    git \
    bluez \
    bluez-dev \
    make \
    g++ \
    libc-dev \
    python3

# Arbeitsverzeichnis setzen
WORKDIR /app

# Kopiere das Repository
RUN git clone https://github.com/bderleta/vevor-ble-bridge.git /app

# Installiere Node.js-Abhängigkeiten
RUN npm install

# Kopiere das Startskript
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]