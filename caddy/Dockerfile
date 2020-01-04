FROM nediiii/golang:alpine as builder

RUN apk add --no-cache git

RUN git clone -b v2 "https://github.com/caddyserver/caddy.git"

RUN cd caddy/cmd/caddy/ && \
    go build

FROM nediiii/alpine:3.11

RUN addgroup -S caddy && \
    adduser -S -D \
    -h /var/lib/caddy/ \
    -g 'Caddy web server' \
    -s /sbin/nologin \
    -G caddy \
    caddy

USER caddy

COPY --from=builder caddy/cmd/caddy/caddy /usr/bin/caddy
