FROM java:8

MAINTAINER architecture@datiobd.com

#Install and update functionality
RUN apt-get update
RUN apt-get install wget

#Download microservice
RUN wget https://github.com/jorgedelallana/kstreams/blob/master/kafka-stream-1.0-SNAPSHOT-bin.tar.gz && tar -xvf kafka-stream-1.0-bin.tar.gz


#Execute microservice
WORKDIR /kafka-stream-1.0-SNAPSHOT/bin/
ENTRYPOINT ./Main
