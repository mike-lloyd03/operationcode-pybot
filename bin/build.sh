#!/usr/bin/env bash

set -eu
# import util functions
source "${SCRIPTDIR}/../lib/util.sh"

echo "Building Docker image..."
runCommand "docker build -t $IMAGE_NAME -f docker/Dockerfile ." || exit $?