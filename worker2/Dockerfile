FROM alpine:latest

RUN apk update && apk add --no-cache supervisor openssh openrc bash

#COPY supervisord.conf /etc/supervisord.conf
#CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

#make sure we get fresh keys
RUN rm -rf /etc/ssh/ssh_host_rsa_key /etc/ssh/ssh_host_dsa_key

EXPOSE 22
RUN ssh-keygen -A
ENTRYPOINT ["/usr/sbin/sshd","-D"]