#!/bin/bash

set -e

PROJECT_TO_BUILD=$1

if [ -z $PROJECT_TO_BUILD ]; then
  echo "Usage: $0 <project_to_build>"
  exit 1
fi

if [ -d docker/m2 ]; then
  rm -rf docker/m2
fi

mkdir -p docker/m2/repository
pushd docker/m2/repository

# run a build without any caching
docker run -v $PROJECT_TO_BUILD:/workspace -w /workspace maven:3.5.0-jdk-8 mvn --batch-mode dependency:resolve >> out.log

# parse download URLs from log and fetch them from maven central
grep -e "Downloaded\:.*\.jar\|\.pom" out.log | awk '{print $3}' | xargs wget -r -nH --cut-dirs=1 $line

popd
