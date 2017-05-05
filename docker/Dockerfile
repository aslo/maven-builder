FROM maven:3.5.0-jdk-8

# add poms whose deps we should download
ADD poms /poms
ADD download-cache.sh /

RUN /download-cache.sh
