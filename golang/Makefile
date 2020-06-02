.PHONY: golang

MAJOR_VERSION=1.14
MINOR_VERSION=4

golang:
	cd $@ && \
	docker build . --no-cache \
	-t ${USERNAME}/$@ \
	-t ${USERNAME}/$@:${MAJOR_VERSION} \
	-t ${USERNAME}/$@:${MAJOR_VERSION}.${MINOR_VERSION}
