FROM ubuntu:16.10
MAINTAINER Kazunori Sakamoto

RUN apt-get update > /dev/null 2>&1 \
  && apt-get dist-upgrade -y > /dev/null 2>&1 \
  && apt-get install -y build-essential curl > /dev/null 2>&1

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - > /dev/null 2>&1 \
  && apt-get install -y \
    make \
    maven \
    nodejs \
    openjdk-8-jdk \
    python \
    python3 \
    ruby \
    > /dev/null 2>&1

RUN echo "$ make -v => `make -v | head -n 1`" \
  && echo "$ mvn -v => `mvn -v | head -n 1`" \
  && echo "$ node -v => `node -v | head -n 1`" \
  && echo "$ java -version => `java -version | head -n 1`" \
  && echo "$ javac -version => `javac -version | head -n 1`" \
  && echo "$ python -V => `python -V | head -n 1`" \
  && echo "$ python3 -V => `python3 -V | head -n 1`" \
  && echo "$ ruby -v => `ruby -v | head -n 1`"

RUN bash show_versions.sh
