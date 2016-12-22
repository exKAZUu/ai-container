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
    > /dev/null 2>&1 \
  && curl https://sh.rustup.rs -sSf | sh > /dev/null 2>&1 \
  && rm -rf /var/lib/apt/lists/*

COPY show_versions.sh /tmp/

RUN bash /tmp/show_versions.sh \
  "make -v | head -n 1" \
  "mvn -v | head -n 1" \
  "node -v | head -n 1" \
  "java -version | head -n 1" \
  "javac -version | head -n 1" \
  "python -V | head -n 1" \
  "python3 -V | head -n 1" \
  "ruby -v | head -n 1" \
  > show_versions \
  && rm -rf /tmp/ \
  && cat show_versions \
  && rm -f show_versions
