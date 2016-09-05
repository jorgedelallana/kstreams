FROM java:8

MAINTAINER architecture@datiobd.com

ADD kafka-stream-1.0-SNAPSHOT-jar-with-dependencies.jar /opt/
ADD app.sh /opt/

RUN ["chmod", "+x", "/opt/app.sh"]
