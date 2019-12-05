# makefile for docker build

USERNAME=nediiii
DOCKERFILES=$(shell find * -type f -name Dockerfile)
IMAGES=$(subst /,\:,$(subst /Dockerfile,,$(DOCKERFILES)))

export

.PHONY: images prune clean update $(IMAGES)

images: $(IMAGES)

prune:
	docker container prune -f && \
	docker network prune -f && \
	docker volume prune -f && \
	docker image prune -f

update:
	docker image prune -f && \
	docker images --format {{.Repository}}":"{{.Tag}} | xargs -L1 docker pull

$(IMAGES): %:
	make -f $@/Makefile

test:
	@echo ${IMAGES}
