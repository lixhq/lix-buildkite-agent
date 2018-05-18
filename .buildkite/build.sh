#!/bin/bash
set -e

eval "$($(dirname $0)/env.sh)"

echo "--- Pulling cached image from docker"
docker pull "quay.io/lixtech/$REPO:$BRANCH" || docker pull "quay.io/lixtech/$REPO:master" || true
echo "--- Building prod docker image $FULL_VERSION"
docker build -f Dockerfile -t "$DOCKER_IMAGE" .
