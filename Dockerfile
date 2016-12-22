FROM ubuntu:16.10
MAINTAINER Kazunori Sakamoto

RUN apt-get update > /dev/null 2>&1 \
  && apt-get dist-upgrade -y > /dev/null 2>&1 \
  && apt-get install -y build-essential curl > /dev/null 2>&1
  && apt-add-repository \
    ppa:evarlast/golang1.4 \
  && apt-get update

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - > /dev/null 2>&1 \
  && apt-get install -y \
    make \
    maven \
    nodejs \
    openjdk-8-jdk \
    python \
    python3 \
    ruby \
    golang \
    > /dev/null 2>&1 \
  && rm -rf /var/lib/apt/lists/*

RUN bash /tmp/show_versions.sh \
  "make -v | head -n 1" \
  "mvn -v | head -n 1" \
  "node -v | head -n 1" \
  "java -version | head -n 1" \
  "javac -version | head -n 1" \
  "python -V | head -n 1" \
  "python3 -V | head -n 1" \
  "ruby -v | head -n 1" \
  && rm -rf /tmp/
