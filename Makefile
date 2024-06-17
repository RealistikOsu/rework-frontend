#!/usr/bin/make

run:
	docker run --network=host --env-file=.env rework-frontend:latest

build:
	docker build -t rework-frontend:latest .
