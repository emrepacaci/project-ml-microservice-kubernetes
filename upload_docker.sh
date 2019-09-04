#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<>
dockerpath=api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=emrepacaci
docker tag api  emrepacaci/api:v1

# Step 3:
# Push image to a docker repository
docker push emrepacaci/api:v1
