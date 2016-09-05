FROM java:8

MAINTAINER architecture@datiobd.com

ADD kafka-stream-1.0-SNAPSHOT-bin.tar.gz /opt/

RUN tar -xvf /opt/kafka-stream-1.0-SNAPSHOT-bin.tar.gz

#Execute microservice
WORKDIR /opt/kafka-stream-1.0-SNAPSHOT/bin/
ENTRYPOINT ./Main
