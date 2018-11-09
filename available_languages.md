```
ant -version | head -n 1 =>
Apache Ant(TM) version 1.10.1 compiled on February 2 2017

ceylon -v | head -n 1 =>
ceylon version 1.3.3 0d594b3 (Contents May Differ)

clang --version | head -n 1 =>
clang version 4.0.1-6 (tags/RELEASE_401/final)

clisp --version | head -n 1 =>
GNU CLISP 2.49 (2010-07-07) (built on lcy01-31.buildd [127.0.1.1])

coffee -v | head -n 1 =>
CoffeeScript version 1.12.7

dmcs --version | head -n 1 =>
Note: dmcs is deprecated, please use mcs instead!

dmd --version | head -n 1 =>
DMD64 D Compiler v2.078.0

erl +V 2>&1 | head -n 1 =>
Erlang (SMP,ASYNC_THREADS) (BEAM) emulator version 9.0.4

gcc --version | head -n 1 =>
gcc (Ubuntu 7.2.0-8ubuntu3) 7.2.0

gdc --version | head -n 1 =>
gdc (Ubuntu 7.2.0-8ubuntu3) 7.2.0

gem -v | head -n 1 =>
2.6.8

ghc --version | head -n 1 =>
The Glorious Glasgow Haskell Compilation System, version 8.0.2

g++ --version | head -n 1 =>
g++ (Ubuntu 7.2.0-8ubuntu3) 7.2.0

go version | head -n 1 =>
go version go1.8.3 linux/amd64

gosh -V | head -n 1 =>
Gauche scheme shell, version 0.9.5 [utf-8,pthreads], x86_64-pc-linux-gnu

gradle -version | head -n 3 | tail -n 1 =>
Gradle 4.4.1

groovy --version | head -n 1 =>
Groovy Version: 2.4.13 JVM: 1.8.0_152 Vendor: Azul Systems, Inc. OS: Linux

gst -v | head -n 1 =>
GNU Smalltalk version 3.2.5

java -version 2>&1 | head -n 1 =>
openjdk version "1.8.0_152"

javac -version 2>&1 | head -n 1 =>
javac 1.8.0_152

kotlin -version | head -n 1 =>
Kotlin version 1.2.10 (JRE 1.8.0_152-b16)

llc --version | head -n 2 | tail -n 1 =>
LLVM version 4.0.1

lsc -v | head -n 1 =>
LiveScript version 1.5.0

lua5.3 -v | head -n 1 =>
Lua 5.3.3  Copyright (C) 1994-2016 Lua.org, PUC-Rio

make -v | head -n 1 =>
GNU Make 4.1

mcs --version | head -n 1 =>
Mono C# compiler version 4.6.2.0

mono -V | head -n 1 =>
Mono JIT compiler version 4.6.2 (Debian 4.6.2.7+dfsg-1ubuntu1)

mvn -v | head -n 1 =>
Apache Maven 3.5.2 (138edd61fd100ec658bfa2d307c43b76940a5d7d; 2017-10-18T07:58:13Z)

node -v | head -n 1 =>
v8.9.4

npm -v | head -n 1 =>
5.6.0

ocaml -version | head -n 1 =>
The OCaml toplevel, version 4.04.0

pip -V | head -n 1 =>
pip 9.0.1 from /usr/lib/python2.7/dist-packages (python 2.7)

pip3 -V | head -n 1 =>
pip 9.0.1 from /usr/lib/python3/dist-packages (python 3.6)

python -V 2>&1 | head -n 1 =>
Python 2.7.14

python3 -V | head -n 1 =>
Python 3.6.3

perl -v | sed -n 2P =>
This is perl 5, version 26, subversion 0 (v5.26.0) built for x86_64-linux-gnu-thread-multi

php -v | head -n 1 =>
PHP 7.1.11-0ubuntu0.17.10.1 (cli) (built: Nov  1 2017 16:30:52) ( NTS )

ruby -v | head -n 1 =>
ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-linux]

rustc --version | head -n 1 =>
rustc 1.18.0

sbt about | head -n 5 | tail -n 1 =>
[info] This is sbt 1.1.0

scala -version 2>&1 | head -n 1 =>
Scala code runner version 2.12.4 -- Copyright 2002-2017, LAMP/EPFL and Lightbend, Inc.

swipl --version | head -n 1 =>
SWI-Prolog version 7.4.2 for amd64

tsc -v | head -n 1 =>
Version 2.6.2

xbuild --verison | head -n 1 =>
XBuild Engine Version 14.0

pip list =>
asn1crypto (0.22.0)
backports.weakref (1.0.post1)
bleach (1.5.0)
chainer (3.2.0)
cryptography (1.9)
decorator (4.1.1)
enum34 (1.1.6)
filelock (3.0.0)
funcsigs (1.0.2)
futures (3.2.0)
html5lib (0.9999999)
idna (2.5)
ipaddress (1.0.17)
Keras (2.1.2)
keyring (10.4.0)
keyrings.alt (2.2)
Markdown (2.6.11)
mock (2.0.0)
numpy (1.14.0)
olefile (0.44)
pbr (3.1.1)
Pillow (4.1.1)
pip (9.0.1)
protobuf (3.5.1)
pycrypto (2.6.1)
pygobject (3.24.1)
Pyste (0.9.10)
pyxdg (0.25)
PyYAML (3.12)
scipy (1.0.0)
SecretStorage (2.3.1)
setuptools (38.4.0)
six (1.11.0)
tensorflow (1.4.1)
tensorflow-tensorboard (0.4.0rc3)
Werkzeug (0.14.1)
wheel (0.30.0)

pip3 list =>
asn1crypto (0.22.0)
bleach (1.5.0)
chainer (3.2.0)
cryptography (1.9)
decorator (4.1.1)
enum34 (1.1.6)
filelock (3.0.0)
html5lib (0.9999999)
idna (2.5)
Keras (2.1.2)
keyring (10.4.0)
keyrings.alt (2.2)
Markdown (2.6.11)
numpy (1.14.0)
pip (9.0.1)
protobuf (3.5.1)
pycrypto (2.6.1)
pygobject (3.24.1)
pyxdg (0.25)
PyYAML (3.12)
scipy (1.0.0)
SecretStorage (2.3.1)
setuptools (38.4.0)
six (1.11.0)
tensorflow (1.4.1)
tensorflow-tensorboard (0.4.0rc3)
Werkzeug (0.14.1)
wheel (0.30.0)
```
