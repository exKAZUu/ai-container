FROM ubuntu:16.10
MAINTAINER Kazunori Sakamoto

RUN apt-get update > /dev/null 2>&1
RUN apt-get dist-upgrade -y > /dev/null 2>&1
RUN apt-get install -y build-essential curl > /dev/null 2>&1

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - > /dev/null 2>&1
RUN apt-get install -y nodejs > /dev/null 2>&1
RUN node -v

RUN apt-get install -y python > /dev/null 2>&1
RUN python -V

RUN apt-get install -y python3 > /dev/null 2>&1
RUN python3 -V
