FROM nediiii/ubuntu:20.04 as builder

ENV GOLANG_VERSION="1.14.4" \
    GOPATH="/go"

RUN apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests wget && \
    rm -rf /var/lib/apt/lists/* && \
    INSTALL_PATH="/usr/local/golang" && \
    mkdir -p ${INSTALL_PATH} && \
    wget https://dl.google.com/go/go${GOLANG_VERSION}.linux-amd64.tar.gz -O - | tar -zxgv -C ${INSTALL_PATH} --strip-components 1 && \
    export PATH="/usr/local/golang/bin:$PATH" && \
    go env -w GO111MODULE=on GOPROXY=https://goproxy.io && \
    go version && \
    mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"

ENV PATH="$GOPATH/bin:/usr/local/golang/bin:$PATH"

WORKDIR $GOPATH
