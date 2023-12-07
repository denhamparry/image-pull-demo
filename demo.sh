#!/usr/bin/env bash

set -e

registry="cgr.dev/denhamparry.co.uk/"
images=("kots")

# Iterate through the array using a for loop
for image in "${images[@]}"; do
    echo "Current image: $image"
    docker pull "$registry$image"
done

docker image ls
