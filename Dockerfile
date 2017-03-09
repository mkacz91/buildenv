FROM debian:jessie-slim

RUN apt-get -y update
RUN apt-get -y install \
  cmake \
  g++
  
RUN echo "Hello World!"
