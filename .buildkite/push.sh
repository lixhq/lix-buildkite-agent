#!/bin/sh
set -e

eval "$($(dirname $0)/env.sh)"

echo "--- Pushing image"
docker tag "$DOCKER_IMAGE" "quay.io/lixtech/$REPO:$FULL_VERSION"
docker push "quay.io/lixtech/$REPO:$FULL_VERSION"
echo "--- Pushing branch image"
docker tag "$DOCKER_IMAGE" "quay.io/lixtech/$REPO:$BRANCH"
docker push "quay.io/lixtech/$REPO:$BRANCH"
