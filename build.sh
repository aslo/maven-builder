#!/bin/bash

set -e

# build both docker images, for comparison purposes
docker build -t maven:with-cache -f Dockerfile-with-cache .
docker build -t maven:no-cache -f Dockerfile-no-cache .

echo "Built docker images: maven:with-cache, maven:no-cache"

