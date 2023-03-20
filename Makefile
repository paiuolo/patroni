DOCKER=docker
DPATH=${CURDIR}

IMAGE_NAME=patroni
VERSION=3.0.1


export DPATH
.PHONY:	build-docker push-docker

build-docker:
	$(DOCKER) build . -t paiuolo/${IMAGE_NAME} -t paiuolo/${IMAGE_NAME}:${VERSION}

push-docker:
	$(DOCKER) push paiuolo/${IMAGE_NAME}:${VERSION}
	$(DOCKER) push paiuolo/${IMAGE_NAME}:latest
