FROM ubuntu:latest
USER root

ENTRYPOINT [ "/sbin/init" ]

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install apt-transport-https software-properties-common ca-certificates -y

RUN apt-get install openssh-server -y
RUN service ssh start