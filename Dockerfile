FROM ubuntu:17.04
MAINTAINER Kazunori Sakamoto

RUN apt-get update \
  && apt-get dist-upgrade -y
