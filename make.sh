#!/bin/bash

set -e

DIR=$(dirname $0)
docker build -t maven:with-cache $DIR/docker

