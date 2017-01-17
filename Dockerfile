FROM ubuntu:16.10
MAINTAINER Kazunori Sakamoto

RUN apt update \
  && apt full-upgrade -y \
  && apt install -y build-essential curl wget zip unzip \
  && curl -sL https://deb.nodesource.com/setup_7.x | bash - \
  && wget http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list \
  && apt-get update \
  && apt -y --allow-unauthenticated install --reinstall d-apt-keyring \
  && apt update \
  && apt full-upgrade -y

RUN apt install -y \
    clang \
    clisp \
    clojure1.6 \
    dmd-bin \
    erlang \
    gauche \
    gdc \
    ghc \
    gnu-smalltalk \
    golang \
    groovy \
    ldc \
    llvm \
    lua5.3 \
    make \
    mono-complete \
    mono-dmcs \
    mono-xbuild \
    nodejs \
    ocaml-nox \
    python \
    python3 \
    perl \
    php \
    swi-prolog \
    ruby \
    rustc \
  && npm install -g \
    coffee-script \
    typescript \
    livescript \
  && curl -s https://get.sdkman.io | bash \
  && source "$HOME/.sdkman/bin/sdkman-init.sh" \
  && yes | sdk install java
  && sdk install kotlin
#  && rm -rf /var/lib/apt/lists/*

COPY show_versions.sh /tmp/

RUN bash /tmp/show_versions.sh \
    "clang --version | head -n 1" \
    "clisp --version | head -n 1" \
    "coffee -v | head -n 1" \
    "dmcs --version | head -n 1" \
    "dmd --version | head -n 1" \
    "erl +V | head -n 1" \
    "gcc --version | head -n 1" \
    "gdc --version | head -n 1" \
    "ghc --version | head -n 1" \
    "g++ --version | head -n 1" \
    "go version | head -n 1" \
    "gosh -V | head -n 1" \
    "groovy --version | head -n 1" \
    "gst -v | head -n 1" \
    "java -version | head -n 1" \
    "javac -version | head -n 1" \
    "ldc2 --version | head -n 1" \
    "llc --version | head -n 1" \
    "lsc -v | head -n 1" \
    "lua5.3 -v | head -n 1" \
    "make -v | head -n 1" \
    "mcs --version | head -n 1" \
    "mono -V | head -n 1" \
    "mvn -v | head -n 1" \
    "node -v | head -n 1" \
    "npm -v | head -n 1" \
    "ocaml -version | head -n 1" \
    "python -V | head -n 1" \
    "python3 -V | head -n 1" \
    "perl -v | sed -n 2P" \
    "php -v | head -n 1" \
    "ruby -v | head -n 1" \
    "rustc --version | head -n 1" \
    "scala -version | head -n 1" \
    "swipl --version | head -n 1" \
    "tsc -v | head -n 1" \
    "xbuild --verison | head -n 1" \
    > show_versions \
  && rm -rf /tmp/ \
  && cat show_versions \
  && rm -f show_versions
