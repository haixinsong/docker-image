.PHONY: letsencrypt-nginx-proxy-companion

letsencrypt-nginx-proxy-companion:
	cd $@ && \
	docker build . --no-cache  \
	-t ${USERNAME}/$@:alpine
