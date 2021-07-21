FROM alpine:latest
USER root

RUN apk add openssh supervisor

# Installing the openssh and bash package, removing the apk cache
RUN apk --update add --no-cache openssh bash \
  && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
  && echo "root:haslo123" | chpasswd \
  && rm -rf /var/cache/apk/*

RUN /usr/bin/ssh-keygen -A
RUN ssh-keygen -t rsa -b 4096 -f  /etc/ssh/ssh_host_key

RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/sbin/sshd", "-D"]
ENTRYPOINT supervisord -c /etc/supervisor/conf.d/supervisord.conf
