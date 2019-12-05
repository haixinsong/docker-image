FROM nediiii/alpine:3.10

ARG VERSION=0.7.3
ARG DOWNLOAD_URL=https://github.com/jwilder/docker-gen/releases/download/$VERSION/docker-gen-alpine-linux-amd64-$VERSION.tar.gz
ENV DOCKER_HOST unix:///tmp/docker.sock

RUN wget -qO- $DOWNLOAD_URL | tar xvz -C /usr/local/bin

ENTRYPOINT ["/usr/local/bin/docker-gen"]
# docker build . --no-cache -f docker-gen.Dockerfile -t nediiii/docker-gen -t nediiii/docker-gen:0.7.3 -t nediiii/docker-gen:alpine -t nediiii/docker-gen:0.7.3-alpine
