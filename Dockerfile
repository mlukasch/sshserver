FROM ubuntu:latest
RUN apt-get -y install openssh-server
COPY id_rsa.pub /.
COPY init.sh /.
RUN /bin/sh init.sh
CMD service ssh start && tail -f /var/log/auth.log
