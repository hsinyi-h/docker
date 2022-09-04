# create a container to build the artifact
FROM openjdk:8 AS BUILD_IMAGE

# install maven to build the image
RUN apt update && apt install maven -y

# copy the source code from github
RUN git clone -b vp-docker https://github.com/imranvisualpath/vprofile-repo.git
RUN cd vprofile-repo && mvn install

# create Tomcat container
FROM tomcat:8-jre11

# remove the default app
RUN rm -rf /usr/local/tomcat/webapps/*

# copy the artifact from the previous step to the container
COPY --from=BUILD_IMAGE vprofile-repo/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

# tomcat is on port 8080
EXPOSE 8080

# run Tomcat server
CMD ["catalina.sh", "run"]

