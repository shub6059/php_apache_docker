#!/bin/bash

# Define your repository name
REPOSITORY="shubham7821/php_myapp"

# List of local image names and tags
IMAGES=(
    "docker-project-apache"
    "docker-project-apache"
    "mysql:5.7"
    # Add more images as needed
)

# Login to Docker Hub (or your registry)
docker login

# Iterate over the list of images and push each one
for image in "${IMAGES[@]}"; do
    docker tag "$image" "$REPOSITORY/${image%%:*}"
    docker push "$REPOSITORY/${image%%:*}"
done
