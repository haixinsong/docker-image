FROM nediiii/ubuntu:20.04 as builder

ENV NODE_VERSION="12.17.0" \
    PATH="/usr/local/node/bin:$PATH"

RUN apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests wget xz-utils && \
    INSTALL_PATH=/usr/local/node && \
    FILE=node-v${NODE_VERSION}-linux-x64.tar.xz && \
    DOWNLOAD_URL=https://nodejs.org/dist/v${NODE_VERSION}/${FILE} && \
    mkdir -p ${INSTALL_PATH} && \
    wget ${DOWNLOAD_URL} -O - | tar -xJv -C ${INSTALL_PATH} --strip-components 1 && \
    export PATH="${INSTALL_PATH}/bin:$PATH" && \
    node --version && \
    npm --version

FROM nediiii/ubuntu:20.04

ENV NODE_VERSION="12.17.0" \
    PATH="/usr/local/node/bin:$PATH"

COPY --from=builder /usr/local/node /usr/local/node

RUN npm i -g yarn && npm cache clean -f

# yarn config set registry https://registry.npm.taobao.org/ && yarn install && yarn config set registry https://registry.npmjs.org/
# docker build . -f node.Dockerfile -t nediiii/node
