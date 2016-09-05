FROM java:8

MAINTAINER architecture@datiobd.com

ADD kafka-stream-1.0-SNAPSHOT-bin.tar.gz .

RUN tar -xvf kafka-stream-1.0-bin.tar.gz

#Execute microservice
WORKDIR /kafka-stream-1.0-SNAPSHOT/bin/
ENTRYPOINT ./Main
