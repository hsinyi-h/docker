FROM ubuntu:latest
# use Label to add new content to the metadata
LABEL "Author"="Hsinyi"
LABEL "Project"="nano"
# environment variable is required to make the build non-interactive
ENV DEBIAN_FRONTEND=noninteractive
# if we run instriction, we create a layer
# it's best practice to create as less layer as possible
# so combining the commands together is better
RUN apt update && apt install apache2 git -y
# use CMD to specify what process to start when you do docker run
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
# the process needs to run on port 80 so we have to do port mapping
EXPOSE 80
# once you attach to the container, you will automatically land on this work directory
# whatever commands that you run with docker exec will be run on this directory
WORKDIR /var/www/html
# Creates volumes to save the data that you don't want to lose after the container is deleted
VOLUME /var/log/apache2
# Use ADD to copy and extract the content to the destination directory
ADD nano.tar.gz /var/www/html
# Note COPY only copy and dump the file. It doesn't extract
# COPY nano.tar.gz /var/www/html

