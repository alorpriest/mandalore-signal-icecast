#!/bin/sh

# Render sets the port for us in $PORT
ICECAST_PORT=${PORT:-8000}

# Replace PORT_HERE with the actual port
envsubst < /etc/icecast.xml.template > /etc/icecast.xml

echo "Starting Icecast on port ${ICECAST_PORT}..."
exec icecast -c /etc/icecast.xml
