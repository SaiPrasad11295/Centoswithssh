FROM centos:latest
MAINTAINER Sai Prasad
LABEL version="1.0" location="India" type="centos-with-ssh"
RUN yum update -y;yum install openssh* -y;yum install vim -y;yum install initscripts -y;
RUN service ssh restart
EXPOSE 22
VOLUME ["/data"]
#COPY ./data
RUN chmod +x /data/red.sh
WORKDIR /root
USER root
ENTRYPOINT //data/red.sh && /bin/bash
