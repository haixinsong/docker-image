.PHONY: caddy

VERSION=1

caddy:
	cd $@ && \
	docker build . --no-cache \
	-t ${USERNAME}/$@:alpine \
	-t ${USERNAME}/$@:${VERSION}-alpine
