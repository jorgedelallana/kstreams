FROM java:8

MAINTAINER architecture@datiobd.com

#Install and update functionality
RUN apt-get update
RUN apt-get install wget

#Download microservice
RUN wget https://drive.google.com/a/datiobd.com/file/d/0B14K0-r9FybUYWRvLUR5Ml9MWDg/view?usp=sharing && tar -xvf kafka-stream-1.0-bin.tar.gz


#Execute microservice
WORKDIR /kafka-stream-1.0-SNAPSHOT/bin/
ENTRYPOINT ./Main
