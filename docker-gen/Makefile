.PHONY: docker-gen

DOCKER-GEN_VERSION=0.7.3

docker-gen:
	cd $@ && \
	docker build . --no-cache \
	-t ${USERNAME}/$@:alpine \
	-t ${USERNAME}/$@:${DOCKER-GEN_VERSION}-alpine
