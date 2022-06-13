IMAGE_NAME=my-node-backend
REPOSITORY=muhammadsiddiqbe/k8s

build-image:
	docker build -t ${IMAGE_NAME} .
	docker tag ${IMAGE_NAME} ${REPOSITORY}:latest

push-image:
	docker push ${REPOSITORY}:latest

run-image:
	docker run -it -d -p 3000:3000 --name ${IMAGE_NAME} --rm ${IMAGE_NAME}

rm-container:
	docker rm -f ${IMAGE_NAME}