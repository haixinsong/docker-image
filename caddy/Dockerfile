FROM nediiii/golang:alpine as builder

RUN apk add --no-cache git

RUN git clone -b v2 "https://github.com/caddyserver/caddy.git"

RUN cd caddy/cmd/caddy/ && \
    go build

FROM nediiii/alpine:3.11

COPY --from=builder caddy/cmd/caddy/caddy /usr/bin/caddy
