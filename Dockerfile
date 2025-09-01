FROM tomcat:9.0-jdk17-temurin
WORKDIR /usr/local/tomcat/webapps/
RUN rm -rf ROOT
COPY target/*.war ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

