# Maven builder
A docker image that contains maven along with a cache of commonly-used dependencies. All
dependencies to be pre-cached should be declared in the provided `pom.xml` file. We use
a dummy project to have maven download all declared dependencies.

The image can be built using the `build.sh` script.

## Caveats
Since we are using a pom.xml file to declare maven dependencies to download, maven
assumes they should form a coherent project. That is, maven will not allow more than one version
of a given dependency. We can likely work around this through clever use of maven profiles.
It may just be simpler to pre-cache via direct download from maven central, removing maven
from the process altogether.

