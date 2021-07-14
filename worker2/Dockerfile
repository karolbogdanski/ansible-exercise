FROM alpine:latest

RUN apk update && apk add --no-cache supervisor openssh 
COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]