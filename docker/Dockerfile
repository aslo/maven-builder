FROM maven:3.5.0-jdk-8

# pre-cache common dependencies
ADD download-cache.sh .
ADD pom.xml .
RUN download-cache.sh && rm download-cache.sh

