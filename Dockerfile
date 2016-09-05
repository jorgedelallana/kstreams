FROM java:8

MAINTAINER architecture@datiobd.com

#Install and update functionality
RUN apt-get update
RUN apt-get install wget

#Download microservice
RUN wget http://nexus.datiobd.com:9081/nexus/content/repositories/architecture/com/datio/architecture/kafka-stream/1.0/kafka-stream-1.0-bin.tar.gz && tar -xvf kafka-stream-1.0-bin.tar.gz


#Execute microservice
WORKDIR /kafka-stream-1.0-SNAPSHOT/bin/
ENTRYPOINT ./Main
