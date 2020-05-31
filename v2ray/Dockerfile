FROM ubuntu:latest as builder

RUN apt-get update
RUN apt-get install wget unzip -y
RUN wget https://github.com/v2ray/v2ray-core/releases/download/v4.23.2/v2ray-linux-64.zip
RUN unzip v2ray-linux-64.zip -d /v2raydir

FROM nediiii/alpine:3.11

COPY --from=builder /v2raydir /usr/bin/v2ray

RUN set -ex && \
    chmod +x /usr/bin/v2ray/v2ctl && \
    chmod +x /usr/bin/v2ray/v2ray && \
    mkdir /etc/v2ray && \
    touch /etc/v2ray/config.json && \
    mkdir /var/log/v2ray/ && \
    touch /var/log/v2ray/access.log && \
    touch /var/log/v2ray/access.log && \
    # forward logs to docker log collector
    ln -sf /dev/stdout /var/log/v2ray/access.log && \
    ln -sf /dev/stderr /var/log/v2ray/error.log

ENV PATH /usr/bin/v2ray:$PATH

CMD ["v2ray", "-config=/etc/v2ray/config.json"]

# docker build . --no-cache -f v2ray.Dockerfile -t nediiii/v2ray -t nediiii/v2ray:alpine
