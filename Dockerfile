FROM java:8

MAINTAINER architecture@datiobd.com

ADD kafka-stream-1.0-SNAPSHOT-jar-with-dependencies.jar /opt/
ADD app.sh /usr/local/bin/

RUN ["chmod", "+x", "/usr/local/bin/app.sh"]
