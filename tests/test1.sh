#!/bin/bash

docker run --rm -v test1.pipeline.yaml:/builds/mocked/build1/pipeline.yaml local/lix-buildkite-agent bootstrap --build-path /builds/mocked/build1/ --job 1  #--help #/pipel ine.yaml