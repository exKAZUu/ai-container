FROM ubuntu:16.10
MAINTAINER Kazunori Sakamoto

RUN apt update > /dev/null 2>&1 \
  && apt dist-upgrade -y > /dev/null 2>&1 \
  && apt install -y build-essential curl wget > /dev/null 2>&1 \
  && curl -sL https://deb.nodesource.com/setup_7.x | bash - > /dev/null 2>&1 \
  && wget http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list > /dev/null 2>&1 \
  && apt-get update > /dev/null 2>&1 \
  && apt -y --allow-unauthenticated install --reinstall d-apt-keyring > /dev/null 2>&1 \
  && apt update > /dev/null 2>&1
  
RUN apt install -y \
    clisp \
    dmd-bin \
    gauche \
    gdc \
    golang \
    ldc \
    llvm \
    lua5.3 \
    make \
    maven \
    nodejs \
    ocaml-nox \
    openjdk-8-jdk \
    scala \
    python \
    python3 \
    php7.0 \
    swi-prolog \
    ruby \
    rustc \
    > /dev/null 2>&1 \
  && npm install -g \
    coffee-script \
    typescript \
  && rm -rf /var/lib/apt/lists/*

COPY show_versions.sh /tmp/

RUN bash /tmp/show_versions.sh \
    "clang --version | head -n 1" \
    "clisp --version | head -n 1" \
    "coffee -v | head -n 1" \
    "dmd --version | head -n 1" \
    "gcc --version | head -n 1" \
    "gdc --version | head -n 1" \
    "g++ --version | head -n 1" \
    "go version | head -n 1" \
    "gosh -V | head -n 1" \
    "lua -v | head -n 1" \
    "make -v | head -n 1" \
    "mvn -v | head -n 1" \
    "node -v | head -n 1" \
    "java -version | head -n 1" \
    "javac -version | head -n 1" \
    "llc --version | head -n 1" \
    "ldc2 --version | head -n 1" \
    "ocaml -version | head -n 1" \
    "python -V | head -n 1" \
    "python3 -V | head -n 1" \
    "php -v | head -n 1" \
    "swipl --version | head -n 1" \
    "ruby -v | head -n 1" \
    "rustc --version | head -n 1" \
    "scala -version | head -n 1" \
    "tsc -v | head -n 1" \
    > show_versions \
  && rm -rf /tmp/ \
  && cat show_versions \
  && rm -f show_versions
