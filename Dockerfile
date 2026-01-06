FROM tomcat:9.0-jdk11-temurin
RUN rm -rf /usr/local/tomcat/webapps/*
COPY app/target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
