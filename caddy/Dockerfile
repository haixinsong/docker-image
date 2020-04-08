FROM nediiii/alpine:3.11

RUN wget --quiet "https://caddyserver.com/download/linux/amd64?license=personal&telemetry=off&plugins=http.forwardproxy" -O- | tar -zx -C /tmp && \
    mv /tmp/caddy /usr/local/bin/caddy && \
    rm -rf /tmp

EXPOSE 443
EXPOSE 2019

CMD /usr/local/bin/caddy -conf etc/caddy/Caddyfile