```
ant -version | head -n 1 =>
Apache Ant(TM) version 1.10.1 compiled on February 2 2017

ceylon -v | head -n 1 =>
ceylon version 1.3.3 0d594b3 (Contents May Differ)

clang --version | head -n 1 =>
clang version 7.0.0-3 (tags/RELEASE_700/final)

clisp --version | head -n 1 =>
GNU CLISP 2.49.92 (2018-02-18) (built on lgw01-amd64-048.buildd [127.0.1.1])

coffee -v | head -n 1 =>
CoffeeScript version 2.3.2

crystal -v | head -n 1 =>
Crystal 0.27.0 [c9d1eef8f] (2018-11-01)

mcs --version | head -n 1 =>
Mono C# compiler version 4.6.2.0

dmd --version | head -n 1 =>
DMD64 D Compiler v2.084.0

erl +V 2>&1 | head -n 1 =>
Erlang (SMP,ASYNC_THREADS) (BEAM) emulator version 9.3.3.3

gcc --version | head -n 1 =>
gcc (Ubuntu 8.2.0-7ubuntu1) 8.2.0

gdc --version | head -n 1 =>
gdc (Ubuntu 8.2.0-7ubuntu1) 8.2.0

gem -v | head -n 1 =>
2.6.11

ghc --version | head -n 1 =>
The Glorious Glasgow Haskell Compilation System, version 8.2.2

g++ --version | head -n 1 =>
g++ (Ubuntu 8.2.0-7ubuntu1) 8.2.0

go version | head -n 1 =>
go version go1.10.4 linux/amd64

gosh -V | head -n 1 =>
Gauche scheme shell, version 0.9.5 [utf-8,pthreads], x86_64-pc-linux-gnu

gradle -version | head -n 3 | tail -n 1 => 

groovy --version | head -n 1 =>
Groovy Version: 2.5.5 JVM: 11.0.1 Vendor: Oracle Corporation OS: Linux

gst -v | head -n 1 =>
GNU Smalltalk version 3.2.5

java -version 2>&1 | head -n 1 =>
openjdk version "11.0.1" 2018-10-16

javac -version 2>&1 | head -n 1 =>
javac 11.0.1

kotlin -version | head -n 1 =>
Kotlin version 1.3.11-release-272 (JRE 11.0.1+13)

llc --version | head -n 2 | tail -n 1 =>
LLVM version 7.0.0

lsc -v | head -n 1 =>
LiveScript version 1.6.0

lua5.3 -v | head -n 1 =>
Lua 5.3.3  Copyright (C) 1994-2016 Lua.org, PUC-Rio

make -v | head -n 1 =>
GNU Make 4.2.1

mcs --version | head -n 1 =>
Mono C# compiler version 4.6.2.0

mono -V | head -n 1 =>
Mono JIT compiler version 4.6.2 (Debian 4.6.2.7+dfsg-1ubuntu1)

mvn -v | head -n 1 =>
Apache Maven 3.6.0 (97c98ec64a1fdfee7767ce5ffb20918da4f719f3; 2018-10-25T03:41:47+09:00)

node -v | head -n 1 =>
v10.13.0

npm -v | head -n 1 =>
6.4.1

ocaml -version | head -n 1 =>
The OCaml toplevel, version 4.05.0

pip -V | head -n 1 =>
pip 9.0.1 from /usr/lib/python2.7/dist-packages (python 2.7)

pip3 -V | head -n 1 =>
pip 9.0.1 from /usr/lib/python3/dist-packages (python 3.6)

python -V 2>&1 | head -n 1 =>
Python 2.7.15+

python3 -V | head -n 1 =>
Python 3.6.7

perl -v | sed -n 2P =>
This is perl 5, version 26, subversion 2 (v5.26.2) built for x86_64-linux-gnu-thread-multi

php -v | head -n 1 =>
PHP 7.2.10-0ubuntu1 (cli) (built: Sep 13 2018 13:38:55) ( NTS )

ruby -v | head -n 1 =>
ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-linux]

rustc --version | head -n 1 =>
rustc 1.28.0

sbt about | head -n 5 | tail -n 1 =>

scala -version 2>&1 | head -n 1 =>
Scala code runner version 2.12.8 -- Copyright 2002-2018, LAMP/EPFL and Lightbend, Inc.

swipl --version | head -n 1 =>
SWI-Prolog version 7.6.4 for amd64

tsc -v | head -n 1 =>
Version 3.2.2

xbuild --verison | head -n 1 =>
XBuild Engine Version 14.0

pip list =>
absl-py (0.6.1)
asn1crypto (0.24.0)
astor (0.7.1)
backports.weakref (1.0.post1)
chainer (5.1.0)
configparser (3.5.0b2)
cryptography (2.3)
decorator (4.3.0)
entrypoints (0.2.3.post3)
enum34 (1.1.6)
filelock (3.0.10)
funcsigs (1.0.2)
futures (3.2.0)
gast (0.2.1)
grpcio (1.17.1)
h5py (2.9.0)
idna (2.6)
ipaddress (1.0.17)
Keras (2.2.4)
Keras-Applications (1.0.6)
Keras-Preprocessing (1.0.5)
keyring (15.1.0)
keyrings.alt (3.1)
Markdown (3.0.1)
mock (2.0.0)
numpy (1.15.4)
olefile (0.46)
pbr (5.1.1)
Pillow (5.2.0)
pip (9.0.1)
protobuf (3.6.1)
pycrypto (2.6.1)
PyGObject (3.30.1)
pyxdg (0.25)
PyYAML (3.13)
scipy (1.2.0)
SecretStorage (2.3.1)
setuptools (40.6.3)
six (1.12.0)
tensorboard (1.12.2)
tensorflow (1.12.0)
termcolor (1.1.0)
Werkzeug (0.14.1)
wheel (0.32.3)

pip3 list =>
absl-py (0.6.1)
asn1crypto (0.24.0)
astor (0.7.1)
chainer (5.1.0)
cryptography (2.3)
decorator (4.3.0)
entrypoints (0.2.3.post3)
filelock (3.0.10)
gast (0.2.1)
grpcio (1.17.1)
h5py (2.9.0)
idna (2.6)
Keras (2.2.4)
Keras-Applications (1.0.6)
Keras-Preprocessing (1.0.5)
keyring (15.1.0)
keyrings.alt (3.1)
Markdown (3.0.1)
numpy (1.15.4)
olefile (0.46)
Pillow (5.2.0)
pip (9.0.1)
protobuf (3.6.1)
pycrypto (2.6.1)
PyGObject (3.30.1)
pyxdg (0.25)
PyYAML (3.13)
scipy (1.2.0)
SecretStorage (2.3.1)
setuptools (40.6.3)
six (1.12.0)
tensorboard (1.12.2)
tensorflow (1.12.0)
termcolor (1.1.0)
Werkzeug (0.14.1)
wheel (0.32.3)
```
