# Maven builder
This repository contains the source for a docker image that contains an installation of maven along 
with a cache of commonly-used dependencies. 

## Building the image
The image can be built using the `build.sh` script. This invokes docker to build the image.
At build time, all dependencies declared in the included `pom.xml` file are downloaded to the
image.

## Caveats
Maven is a dependency management tool that is meant to work within the scope of a project. Because
if that, it assumes that all declared dependencies should form a valid project.
That means maven will not allow more than one version of a given dependency to be installed. 

We can likely work around this through clever use of maven profiles, but it may just be simpler to 
pre-cache via direct download from maven central, removing maven from the process altogether.

