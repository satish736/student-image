FROM tomcat

WORKDIR /usr/local/tomcat

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/context.xml
COPY lib /usr/local/tomcat/
COPY target/*.war /usr/local/tomcat/webapps/

./usr/local/tomcat/bin/startup.sh

EXPOSE 8080
