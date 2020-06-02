NODE_VERSION=12.17.0

.PHONY: node
node:
	cd $@ && \
	docker build . --no-cache  \
	-t ${USERNAME}/$@ \
	-t ${USERNAME}/$@:${NODE_VERSION}
