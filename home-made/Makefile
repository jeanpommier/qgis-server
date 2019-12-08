SHELL := /bin/bash
TAG=0.2

all: pull-deps docker-build-qgis docker-build-lizmap

pull-deps:
	docker pull debian:stretch

docker-build-qgis:
	docker build -t mopnaej/qgisserver:${TAG} qgisserver/

docker-build-lizmap:
	docker build -t mopnaej/lizmap-client:${TAG} docker-lizmap-3.2.2/
