NGINX_VERSION=1.17.6

.PHONY: nginx

nginx:
	cd $@ && \
	docker build . --no-cache  \
	-t ${USERNAME}/$@:alpine \
	-t ${USERNAME}/$@:${NGINX_VERSION}-alpine
