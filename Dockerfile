FROM ubuntu:18.10
MAINTAINER Kazunori Sakamoto

ENV TZ=Asia/Tokyo

RUN apt update \
  && apt dist-upgrade -y \
  && apt install -y tzdata \
  && apt install -y build-essential curl wget dirmngr zip unzip dos2unix \
  && curl -sL https://deb.nodesource.com/setup_11.x | bash - \
  && wget http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list \
  && apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net --recv-keys EBCF975E5BA24D5E \
  && curl -sL "https://keybase.io/crystal/pgp_keys.asc" | apt-key add - \
  && echo "deb https://dist.crystal-lang.org/apt crystal main" | tee /etc/apt/sources.list.d/crystal.list \
  && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
  && echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | tee /etc/apt/sources.list.d/mono-official-stable.list \
  && apt update \
  && apt -y --allow-unauthenticated install --reinstall d-apt-keyring \
  && apt update \
  && apt dist-upgrade -y \
  && apt install -y \
    clang \
    clisp \
    cmake \
    crystal \
    cython \
    cython3 \
    dmd-compiler dub \
    erlang \
    gauche \
    gdc \
    gfortran \
    ghc \
    gnu-smalltalk \
    golang \
    julia \
    libboost-all-dev \
    llvm \
    lua5.3 \
    make \
    mono-complete \
    mono-dmcs \
    mono-xbuild \
    nodejs \
    ocaml-nox \
    open-cobol \
    python python-pip python-numpy python-scipy \
    python3 python3-pip python3-numpy python3-scipy \
    perl \
    php \
    swi-prolog \
    ruby rbenv ruby-build \
  && apt autoremove -y \
  && apt clean -y \
  && npm install -g \
    coffeescript \
    typescript \
    livescript \
  && adduser --disabled-password --gecos "" aicomp \
  && apt purge -y man \
  && apt clean -y \
  && rm -rf /var/lib/apt/lists/* /tmp/*

USER aicomp

COPY show_versions.sh /home/aicomp/
    
RUN cd \
  && curl -s https://get.sdkman.io | bash \
  && echo -e "-J-Xms512M\n-J-Xmx4G" >> ~/.sbtopts \
  && echo 'export SDKMAN_DIR="/home/aicomp/.sdkman"' >> ~/.bash_profile \
  && echo '[[ -s "/home/aicomp/.sdkman/bin/sdkman-init.sh" ]] && source "/home/aicomp/.sdkman/bin/sdkman-init.sh"' >> ~/.bash_profile \
  && curl https://sh.rustup.rs -sSf | sh -s -- -y \
  && bash -l -c " \
    yes | sdk install java \
    && sdk install ant \
    && sdk install ceylon \
    && sdk install gradle \
    && sdk install groovy \
    && sdk install kotlin \
    && sdk install maven \
    && sdk install sbt \
    && sdk install scala \
  " \
  && rm -Rf ~/.sdkman/archives/* ~/.sdkman/tmp/* \
  && pip install chainer keras tensorflow \
  && pip3 install chainer keras tensorflow https://download.pytorch.org/whl/cpu/torch-1.0.1.post2-cp36-cp36m-linux_x86_64.whl torchvision \
  && rbenv install 2.4.1 \
  && rbenv global 2.4.1 \
  && echo 'eval "$(rbenv init -)"' >> ~/.bash_profile \
  && echo "export SBT_OPTS='-Xms512M -Xmx4G'" >> ~/.bash_profile \
  && bash -l -c "gem install bundler" \
  && bash -l -c "groovy --version && sbt about && sbt about" \
  && bash -l ~/show_versions.sh \
    "ant -version | head -n 1" \
    "ceylon -v | head -n 1" \
    "clang --version | head -n 1" \
    "clisp --version | head -n 1" \
    "cmake --version | head -n 1" \
    "cobc --version | head -n 1" \
    "coffee -v | head -n 1" \
    "crystal -v | head -n 1" \
    "cython -V | head -n 1" \
    "cython3 -V | head -n 1" \
    "mcs --version | head -n 1" \
    "dmd --version | head -n 1" \
    "erl +V 2>&1 | head -n 1" \
    "gcc --version | head -n 1" \
    "gdc --version | head -n 1" \
    "gem -v | head -n 1" \
    "gfortran --version | head -n 1" \
    "ghc --version | head -n 1" \
    "g++ --version | head -n 1" \
    "go version | head -n 1" \
    "gosh -V | head -n 1" \
    "gradle -version | head -n 3 | tail -n 1" \
    "groovy --version | head -n 1" \
    "gst -v | head -n 1" \
    "java -version 2>&1 | head -n 1" \
    "javac -version 2>&1 | head -n 1" \
    "julia --version | head -n 1" \
    "kotlin -version | head -n 1" \
    "llc --version | head -n 2 | tail -n 1" \
    "lsc -v | head -n 1" \
    "lua5.3 -v | head -n 1" \
    "make -v | head -n 1" \
    "mcs --version | head -n 1" \
    "mono -V | head -n 1" \
    "mvn -v | head -n 1" \
    "node -v | head -n 1" \
    "npm -v | head -n 1" \
    "ocaml -version | head -n 1" \
    "pip -V | head -n 1" \
    "pip3 -V | head -n 1" \
    "python -V | head -n 1" \
    "python3 -V | head -n 1" \
    "perl -v | sed -n 2P" \
    "php -v | head -n 1" \
    "ruby -v | head -n 1" \
    "rustc --version | head -n 1" \
    "cargo --version | head -n 1" \    
    "sbt about | head -n 3 | tail -n 1" \
    "scala -version 2>&1 | head -n 1" \
    "swipl --version | head -n 1" \
    "tsc -v | head -n 1" \
    "xbuild --verison | head -n 4 | tail -n 1" \
    "pip list" \
    "pip3 list" \
    > ~/show_versions \
  && cat ~/show_versions
