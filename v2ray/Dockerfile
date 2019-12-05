FROM ubuntu:latest as builder

RUN apt-get update
RUN apt-get install curl -y
RUN curl -L -o /tmp/go.sh https://install.direct/go.sh
RUN chmod +x /tmp/go.sh
RUN /tmp/go.sh

FROM nediiii/alpine:3.10

COPY --from=builder /usr/bin/v2ray /usr/bin/v2ray

RUN set -ex && \
    sed -i "s#https://mirrors.tuna.tsinghua.edu.cn/alpine#http://dl-cdn.alpinelinux.org/alpine#g" /etc/apk/repositories && \
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
