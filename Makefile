all: build push

build:
	docker build -t ${USER}/ubuntu:15.04 .

push: build
	docker push ${USER}/ubuntu:15.04

test: build
	docker run -i ${USER}/ubuntu:15.04 /bin/cat /etc/lsb-release
