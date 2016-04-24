FROM ubuntu:latest
RUN apt-get -y install openssh-server
COPY init.sh /.
RUN /bin/sh init.sh
#RUN service ssh start && service rsyslog restart
CMD /usr/sbin/sshd -d
#CMD tail -f /var/log/auth.log
