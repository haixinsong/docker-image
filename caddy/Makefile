.PHONY: caddy

VERSION=1

caddy:
	cd $@ && \
	docker build . --no-cache \
	-t ${USERNAME}/$@:alpine \
	-t ${USERNAME}/$@:alpine-`date "+%Y%m%d"` \
	-t ${USERNAME}/$@:${VERSION}-alpine \
	-t ${USERNAME}/$@:${VERSION}-alpine-`date "+%Y%m%d"`
