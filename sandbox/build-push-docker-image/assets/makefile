# make a docker image and push to docker hub

all: build tag login push

build:
	docker build -t ${IMAGE} -f ${DOCKERFILE} .

tag:
	docker tag ${IMAGE} ${USER}/${IMAGE}:latest

login:
	docker login

push:
	docker push ${USER}/${IMAGE}:latest