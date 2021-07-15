FROM fedora:latest
USER root

RUN dnf -y install dnf-plugins-core
RUN dnf -y install openssh-server
RUN dnf -y install passwd

RUN sed '$d' /etc/ssh/sshd_config && echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && echo 'root:haslo123' | chpasswd
#RUN if [[ $(tail -n1 /etc/ssh/sshd_config) != 'PermitRootLogin yes' ]]; then echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config; fi
RUN echo 'root:haslo123' | chpasswd

ENTRYPOINT /sbin/init