#!/bin/bash

DIR="$( dirname -- "$BASH_SOURCE"; )";
LICHESS_PATH=$(readlink -f "${DIR}/../lichess-server")

docker run \
    --mount type=bind,source=$LICHESS_PATH,target=/home/lichess/projects \
    --publish 9663:9663 \
    --publish 9664:9664 \
    --publish 8212:8212 \
    --name lichess \
    --interactive \
    --rm \
    --tty \
    lichess
