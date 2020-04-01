#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=alymaquiling/api

# Step 2:
# Authenticate & tag
docker login --username=alymaquiling
echo "Docker ID and Image: $dockerpath"
docker tag cd1bd4a36eca alymaquiling/api:firsttry

# Step 3:
# Push image to a docker repository
docker push alymaquiling/api
