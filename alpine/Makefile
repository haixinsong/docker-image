VERSION=3.11

.PHONY: alpine

alpine:
	cd $@ && \
	docker build . --no-cache  \
	-t ${USERNAME}/$@ \
	-t ${USERNAME}/$@:${VERSION}
