FROM nediiii/alpine:3.11

RUN addgroup -S caddy && \
    adduser -S -D \
    -h /var/lib/caddy/ \
    -g 'Caddy web server' \
    -s /sbin/nologin \
    -G caddy \
    caddy && \
    wget --quiet "https://caddyserver.com/download/linux/amd64?license=personal&telemetry=off&plugins=http.forwardproxy" -O- | tar -zx -C /tmp && \
    mv /tmp/caddy /usr/local/bin/caddy && \
    rm -rf /tmp

USER caddy

CMD /usr/local/bin/caddy -conf etc/caddy/Caddyfile