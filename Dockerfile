FROM alpine:3.19

# Install Icecast and envsubst (for dynamic port)
RUN apk add --no-cache icecast gettext

# Copy config and start script
COPY icecast.xml /etc/icecast.xml.template
COPY start.sh /start.sh

RUN chmod +x /start.sh

# Render sets $PORT for us
ENV ICECAST_HOST=0.0.0.0

CMD ["/start.sh"]
