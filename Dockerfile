
RUN apt-get -y install openssh-server
RUN service ssh start && service rsyslog restart
CMD tail -f /var/log/auth.log
