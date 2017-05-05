#!/bin/bash

set -e

DIR=$(dirname $0)

echo "Initiating docker build"
docker build -t maven:with-cache $DIR/docker

