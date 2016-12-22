FROM ubuntu:16.10
MAINTAINER Kazunori Sakamoto

RUN apt-get update > /dev/null 2>&1 \
  && apt-get dist-upgrade -y > /dev/null 2>&1 \
  && apt-get install -y build-essential curl > /dev/null 2>&1 \
  && wget http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list \
  && apt-get update && apt-get -y --allow-unauthenticated install --reinstall d-apt-keyring && apt-get update

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - > /dev/null 2>&1 \
  && apt-get install -y \
    dmd-bin \
    gdc \
    golang \
    ldc \
    llvm \
    make \
    maven \
    nodejs \
    openjdk-8-jdk \
    scala \
    python \
    python3 \
    ruby \
    rustc \
    > /dev/null 2>&1 \
  && npm install -g \
    typescript \
  && rm -rf /var/lib/apt/lists/*

COPY show_versions.sh /tmp/

RUN bash /tmp/show_versions.sh \
  "clang --version | head -n 1" \
  "dmd --version | head -n 1" \
  "gcc --version | head -n 1" \
  "gdc --version | head -n 1" \
  "go version | head -n 1" \
  "g++ --version | head -n 1" \
  "make -v | head -n 1" \
  "mvn -v | head -n 1" \
  "node -v | head -n 1" \
  "java -version | head -n 1" \
  "javac -version | head -n 1" \
  "llc --version | head -n 1" \
  "ldc2 --version | head -n 1" \
  "python -V | head -n 1" \
  "python3 -V | head -n 1" \
  "ruby -v | head -n 1" \
  "rustc --version | head -n 1" \
  "scala -version | head -n 1" \
  "tsc -v | head -n 1" \
  > show_versions \
  && rm -rf /tmp/ \
  && cat show_versions \
  && rm -f show_versions
