#!/bin/bash

set -e

DIR=$(dirname $0)

# download the cache for given projects
echo "Downloading maven cache"
$DIR/download-cache.sh ~/tmp/spring-petclinic/

echo "Initiating docker build"
docker build -t maven:with-cache $DIR/docker

