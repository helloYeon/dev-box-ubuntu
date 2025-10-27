CONTAINER_NAME :=dev-box-ubuntu
# IMAGE_NAME :=
build:
	 docker build -t dev-box-ubuntu:22.04 -f Dockerfile.22.04 .

run:
	@docker run --rm -it --name ${CONTAINER_NAME} dev-box-ubuntu:22.04 bash

run-detached:
	@docker run -dit --name ${CONTAINER_NAME} dev-box-ubuntu:22.04

shell:
	@docker exec -it ${CONTAINER_NAME} bash

rm:
	@docker rm ${CONTAINER_NAME} || true
