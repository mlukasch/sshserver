FROM ubuntu:latest
RUN apt-get -y install openssh-server
COPY id_rsa.pub /.
COPY init.sh /.
RUN service ssh start
RUN /bin/sh init.sh
CMD tail -f /var/log/auth.log
