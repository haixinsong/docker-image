.PHONY: caddy

VERSION=2

caddy:
	cd $@ && \
	docker build . --no-cache \
	-t ${USERNAME}/$@:alpine \
	-t ${USERNAME}/$@:${VERSION}-alpine
