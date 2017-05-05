#!/bin/bash

set -e

POMS=$(find /poms/*.xml)

for POM in $POMS; do
  mvn --batch-mode -f $POM -s /usr/share/maven/ref/settings-docker.xml dependency:go-offline
done

