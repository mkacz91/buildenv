FROM debian:jessie-slim

RUN apt-get -y update
RUN apt-get -y install \
  cmake \
  g++ \
  openssh-server

RUN useradd -ms /bin/bash build

RUN systemctl start ssh.service
RUN systemctl enable ssh.service

EXPOSE 22
