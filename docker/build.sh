#!/bin/bash

IMAGE=smwebsite

TAG=$1
if [ "$TAG" = "" ]; then
    TAG="test"
fi

REGISTRY="smarttraffic"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."

echo "Building $REGISTRY/$IMAGE:$TAG"
docker build -t $REGISTRY/$IMAGE:${TAG} $DIR
