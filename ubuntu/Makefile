.PHONY: ubuntu

VERSION=20.04

ubuntu:
	cd $@ && \
	docker build . --no-cache \
	-t ${USERNAME}/$@ \
	-t ${USERNAME}/$@:${VERSION} \
