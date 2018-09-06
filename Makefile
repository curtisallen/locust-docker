VERSION=0.9.0
PROJECT_NAME=locustio
CONTAINER=curtisallen/$(PROJECT_NAME):$(VERSION)

build-push: build push

build:
	docker build . \
		-t $(CONTAINER) \
		--build-arg LOCUST_VERSION=$(VERSION)

push:
	docker push $(CONTAINER)

.PHONY: build push build-push
