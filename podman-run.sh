#!/bin/bash

#podman pod create --name gitea-pod \
#	-p 42623:22 \
#	-p 3000:3000

podman run -d \
	--name gitea-pod \
	-e USER=git \
	-e USER_UID=1000 \
	-e USER_GID=1000 \
	-e GITEA_CUSTOM=/data/gitea \
	-v ./data:/data \
	-v /etc/localtime:/etc/localtime:ro \
	-v /etc/timezone:/etc/timezone:ro \
	-p 2222:22 \
	-p 3000:3000 \
        gitea/gitea:latest
