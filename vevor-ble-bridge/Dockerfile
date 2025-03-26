FROM python:3.10-slim

# Installiere Systemabhängigkeiten
RUN apt-get update && apt-get install -y \
    git bluez \
    && rm -rf /var/lib/apt/lists/*

# Arbeitsverzeichnis festlegen
WORKDIR /app

# Code aus dem Repository klonen
RUN git clone https://github.com/bderleta/vevor-ble-bridge.git /app/vevor-ble-bridge

# Kopiere Abhängigkeiten und installiere sie
COPY requirements.txt /app/vevor-ble-bridge/
RUN pip install --no-cache-dir -r /app/vevor-ble-bridge/requirements.txt

# Skripte und Laufzeitdateien kopieren
COPY run.sh /app/

# Skripte ausführbar machen
RUN chmod +x /app/run.sh

# Standardkommando
CMD ["/app/run.sh"]
