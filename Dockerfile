FROM ubuntu:16.10
MAINTAINER Kazunori Sakamoto

RUN apt-get update && apt-get dist-upgrade -y > /dev/null 2>&1
RUN apt-get install -y build-essential curl > /dev/null 2>&1

RUN curl -sL https://deb.nodesource.com/setup_7.x
RUN apt-get install -y nodejs
RUN nodejs -v

RUN apt-get install -y python
RUN python -V

RUN apt-get install -y python3
RUN python3 -V
