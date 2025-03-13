ARG BUILD_FROM
FROM $BUILD_FROM

# Installiere benötigte Pakete
RUN apk add --no-cache \
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

# Debug-Info ausgeben
# RUN node --version && npm --version

# Installiere Node.js-Abhängigkeiten mit mehr Feedback
# RUN cd /app && npm install --verbose

# Kopiere das Startskript
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]