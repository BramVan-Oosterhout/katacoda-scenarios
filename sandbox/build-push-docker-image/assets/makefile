# make a docker image and push to docker hub

build:
	docker build -t ${IMAGE} -f ${DOCKERFILE} .

tag:
	docker tag ${IMAGE} ${USER}/${IMAGE}:latest

login:
	docker login

push:
	docker push ${USER}/${IMAGE}:latest