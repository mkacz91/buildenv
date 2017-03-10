FROM debian:jessie-slim

RUN apt-get -y update
RUN apt-get -y install \
  openssh-server

RUN useradd -ms /bin/bash build
RUN echo 'build:build' | chpasswd

RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

EXPOSE 22

CMD systemctl start ssh.service && systemctl enable ssh.service
