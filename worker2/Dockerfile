FROM alpine:latest

RUN apk update && apk add --no-cache supervisor openssh bash openrc

RUN sed '$d' /etc/ssh/sshd_config && echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && echo 'root:haslo123' | chpasswd

COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

ENTRYPOINT ["sh","-c", "rc-status; rc-service sshd start "]