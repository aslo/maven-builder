FROM maven:3.5.0-jdk-8

# pre-cache common dependencies
RUN mkdir -p /mvn-dummy-project
ADD pom.xml /mvn-dummy-project
RUN cd /mvn-dummy-project \
  && mvn dependency:go-offline \
  && cd / \
  && rm -rf /mvn-dummy-project
