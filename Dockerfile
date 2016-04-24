FROM ubuntu:latest

RUN apt-get -y install openssh-server
CMD /bin/sh
