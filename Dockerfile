FROM tomcat:8.5.34-jre8-alpine
COPY sample.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh","run"]

