SHELL := /bin/bash
TAG=0.2

all: docker-run

docker-run: volumes
	docker-compose up

volumes:
	/bin/bash ./scripts/volumes-init.sh

clean:
	rm -rf volumes/
