NODE_VERSION=12.13.1

.PHONY: node

node:
	cd $@ && \
	docker build . --no-cache  \
	-t ${USERNAME}/$@:alpine \
	-t ${USERNAME}/$@:${NODE_VERSION}-alpine
