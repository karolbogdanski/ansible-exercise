FROM ubuntu:latest
USER root

RUN apt update && apt -y install openssh-server
RUN apt -y install supervisor
RUN apt -y install gnupg
RUN apt -y install libcurl4 openssl

RUN sed '$d' /etc/ssh/sshd_config
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
RUN echo 'root:haslo123' | chpasswd

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ENTRYPOINT /usr/bin/supervisord