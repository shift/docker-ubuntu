all: build push

build:
	docker build -t ${DOCKER_USER}/ubuntu:15.04 .

push: build
	docker push ${DOCKER_USER}/ubuntu:15.04

test: build
	docker run -i ${DOCKER_USER}/ubuntu:15.04 /bin/cat /etc/lsb-release
