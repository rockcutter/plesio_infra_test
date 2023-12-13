
generate_manifest: 
ifdef DOCKER_TAG
	cat template/server.yml | sed s/DOCKER_TAG/$(DOCKER_TAG)/ > manifest/server/server.yml
else
	cat template/server.yml | sed s/DOCKER_TAG/TEMP_PLACE_HOLDER/ | sed s/:TEMP_PLACE_HOLDER// > manifest/server/server.yml
endif
	cp template/service.yml manifest/server/service.yml


