DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-ansible
VERSION =		latest
VERSION_ALIASES =	
TITLE =			Ansible
DESCRIPTION =		Ansible
SOURCE_URL =		https://github.com/scaleway/image-app-ansible


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - https://j.mp/scw-builder | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
