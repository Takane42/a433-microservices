#!/bin/zsh

# Buat Image docker dari Dockerfile yang berada pada directory yang sama
docker build -t ghcr.io/takane42/karsajobs-ui:latest  .

# Login ke Github Packages
echo $GITHUB_PASS | docker login ghcr.io -u Takane42 --password-stdin

# Push Image ke Github Packages
docker push ghcr.io/takane42/karsajobs-ui:latest
