.PHONY: caddy

# `date "+%Y%m%d"`

VERSION=2.0.0
caddy:
	cd $@ && \
	docker build . --no-cache \
	-t ${USERNAME}/$@ \
	-t ${USERNAME}/$@:${VERSION} \
