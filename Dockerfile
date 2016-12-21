FROM ubuntu:16.10
MAINTAINER Kazunori Sakamoto

RUN apt-get update && apt-get dist-upgrade -y

RUN curl -sL https://deb.nodesource.com/setup_7.x
RUN apt-get install -y nodejs
RUN node -v
