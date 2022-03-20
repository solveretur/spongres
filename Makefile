help:
	@echo "build"
	@echo "deploy"
	@echo "remove"

.DEFAULT_GOAL :=
default: deploy

build:
	docker-compose -f docker-compose.yml build --force-rm

deploy: build
	docker-compose -f docker-compose.yml up -d

remove:
	docker-compose -f docker-compose.yml down -v
