VERSION=3.10

.PHONY: alpine

alpine:
	cd $@ && \
	docker build . --no-cache  \
	-t ${USERNAME}/$@ \
	-t ${USERNAME}/$@:${VERSION}
