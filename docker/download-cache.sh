#!/bin/bash

set -e

mkdir -p /mvn-dummy-project
cp pom.xml /mvn-dummy-project

# download maven deps in the dummy project
pushd /mvn-dummy-project
mvn dependency:go-offline
popd

rm -rf /mvn-dummy-project
