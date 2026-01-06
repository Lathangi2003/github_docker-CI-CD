FROM tomcat:9.0-jdk11-temurin
RUN rm -rf /usr/local/tomcat/webapps/*
# Copy the WAR produced by build.sh (in repo root) and deploy as ROOT context
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
