#!/bin/bash
set -e

eval "$($(dirname $0)/env.sh)"

echo "--- Running flow check"
docker run --rm --entrypoint "" "$DOCKER_IMAGE" yarn run flow check
echo "--- Running unit tests"
docker run --rm --entrypoint "" "$DOCKER_IMAGE" yarn run test:unit
