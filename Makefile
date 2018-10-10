image_name = weatherbot_nlu
docker_user = howlanderson

docker_image_name = ${docker_user}/${image_name}

.PHONY: tag
tag:
	docker tag ${image_name} ${docker_image_name}

.PHONY: build
build:
	docker build -t ${image_name} .

.PHONY: login
login:
	docker login

.PHONY: push
push:
	docker push ${docker_image_name}:latest

.PHONY: release
release: build tag login push
	# pass

.PHONY: run
run:
	docker run -p 5000:5000 ${image_name}