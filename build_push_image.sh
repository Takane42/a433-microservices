#!/bin/bash

# Buat Image docker dari Dockerfile yang berada pada directory yang sama
docker build -t item-app:v1 .

# List Image yang berada pada Workstation
docker images

# Ubah nama image yang digunakan sesuai dengan format penamaan Github Packages
docker tag item-app:v1 ghcr.io/takane42/item-app:v1

# Login ke Github Packages
echo $GITHUB_PASS | docker login ghcr.io -u Takane42 --password-stdin

# Push Image ke Github Packages
docker push ghcr.io/takane42/item-app:v1
