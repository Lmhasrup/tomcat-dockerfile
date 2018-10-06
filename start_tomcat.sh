#!/bin/bash
rm -rf sample.war
jar -cvf sample.war *
docker stop tomcat8-alpine_con
sleep 10;
docker rm tomcat8-alpine_con
docker rmi tomcat-8.5.34-jre8-alpine:v1
docker build -t tomcat-8.5.34-jre8-alpine:v1 .
sleep 10;
docker run -itd --name=tomcat8-alpine_con -p 8888:8080 tomcat-8.5.34-jre8-alpine:v1
