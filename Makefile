down:
	docker-compose down

stop:
	docker-compose stop

up: build
	docker-compose up

build: files
	docker-compose build

dev: build-dev
	docker-compose up

build-dev: files-dev
	docker-compose build

files:
	cp environments/docker-compose.prod.yml docker-compose.yml
	cp docker/nodejs/Dockerfile ./Dockerfile

files-dev:
	cp environments/docker-compose.dev.yml docker-compose.yml
	cp docker/nodejs/Dockerfile ./Dockerfile
