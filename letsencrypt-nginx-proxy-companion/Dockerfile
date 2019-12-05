FROM nediiii/docker-gen:alpine AS docker-gen

FROM nediiii/alpine:3.10

ARG VERSION=1.12
ARG DOWNLOAD_URL=https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion/archive/v$VERSION.tar.gz

ENV DEBUG=false \
    DOCKER_HOST=unix:///var/run/docker.sock

# Install docker-gen from `nediiii/docker-gen`
COPY --from=docker-gen /usr/local/bin/docker-gen /usr/local/bin/

# Install packages required by the image
RUN sed -i "s#https://mirrors.tuna.tsinghua.edu.cn/alpine#http://dl-cdn.alpinelinux.org/alpine#g" /etc/apk/repositories && \
    apk add --update --no-cache \
    bash \
    ca-certificates \
    coreutils \
    curl \
    jq \
    openssl

RUN wget -qO- $DOWNLOAD_URL | tar xvz -C / && \
    cd /docker-letsencrypt-nginx-proxy-companion-$VERSION/ && \
    chmod +rx install_simp_le.sh && \
    sync && \
    sh install_simp_le.sh && \
    mkdir /app && \
    mv app/* /app/ && \
    cd / && \
    rm -rf /docker-letsencrypt-nginx-proxy-companion-$VERSION

WORKDIR /app

ENTRYPOINT [ "/bin/bash", "/app/entrypoint.sh" ]
CMD [ "/bin/bash", "/app/start.sh" ]
