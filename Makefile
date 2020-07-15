all::
	docker build -t $(DOCKER_REGISTRY)fluent-loganalytics .
ifdef DOCKER_REGISTRY
	docker push $(DOCKER_REGISTRY)fluent-loganalytics
endif

