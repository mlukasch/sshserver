FROM ubuntu:latest

RUN apt-get -y install openssh-server
RUN systemctl start ssh
CMD tail -f /var/log/auth.log
