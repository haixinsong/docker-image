FROM nediiii/ubuntu:20.04

ENV CADDY_VERSION="2.0.0" \
	# See https://caddyserver.com/docs/conventions#file-locations for details
	XDG_CONFIG_HOME="/config" \
	XDG_DATA_HOME="/data"

RUN apt-get update && apt-get install -y --no-install-recommends --no-install-suggests wget && \
	mkdir -p \
		/config/caddy \
		/data/caddy \
		/etc/caddy \
		/usr/share/caddy \
	&& \
	export CADDY_DIST_COMMIT="80870b227ded910971ecace4a0c136bf0ef46342" && \
	export checksum='3b00c705caa3162750dfea9cacd3f05ae1dda798e346293ba320ee63682a94e5e26c994fee75677324d841962757b098d2f696e4c5a0044131a0cd9b0e54b9fd' && \
	wget --quiet -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/$CADDY_DIST_COMMIT/config/Caddyfile" && \
	wget --quiet -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/$CADDY_DIST_COMMIT/welcome/index.html" && \
	wget --quiet -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v${CADDY_VERSION}/caddy_${CADDY_VERSION}_linux_amd64.tar.gz" \
	&& \
	apt-get remove --purge --auto-remove -y wget && rm -rf /var/lib/apt/lists/* && \
	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c && \
	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy && \
	rm -f /tmp/caddy.tar.gz && \
	chmod +x /usr/bin/caddy && \
	caddy version

VOLUME /config
VOLUME /data

EXPOSE 80
EXPOSE 443
EXPOSE 2019

CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
