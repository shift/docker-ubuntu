all: build push

build:
	docker build -t ${DOCKER_USER}/ubuntu:15.04 .

push: build
	docker save ${DOCKER_USER}/ubuntu:15.04 > ubuntu_15.04.tar
	docker load < ubuntu_15.04.tar
	docker push ${DOCKER_USER}/ubuntu:15.04

test: build
	docker run -i ${DOCKER_USER}/ubuntu:15.04 /bin/cat /etc/lsb-release
