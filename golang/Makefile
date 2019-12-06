.PHONY: golang

VERSION=1.13.4

golang:
	cd $@ && \
	docker build . --no-cache \
	-t ${USERNAME}/$@:alpine \
	-t ${USERNAME}/$@:${VERSION}-alpine
