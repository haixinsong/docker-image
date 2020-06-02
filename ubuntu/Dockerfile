FROM ubuntu:20.04

ENV TZ="Asia/Shanghai" \
    LANG="en_US.utf8"

RUN DEBIAN_FRONTEND="noninteractive" && \
    apt-get update && \
    # tzdata
    apt-get install -y --no-install-recommends --no-install-suggests tzdata && \
    echo $TZ > /etc/timezone && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata && \
    # locales
    apt-get install -y locales && \
    localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 && \
    # ca-certificates
    apt-get install -y ca-certificates && \
    # clean cache
    rm -rf /var/lib/apt/lists/*
