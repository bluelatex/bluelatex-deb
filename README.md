bluelatex-deb
=============

Debian packaging data for \BlueLaTeX

- Install build dependencies :
 - SBT : http://www.scala-sbt.org/ :
```shell
$ cd /tmp
$ wget https://dl.bintray.com/sbt/debian/sbt-0.13.6.deb
# apt-get install --no-install-recommends openjdk-7-jdk zip
# dpkg -i sbt-0.13.6.deb
```
 - Debian-related build stuff :
```shell
# apt-get install --no-install-recommends build-essential devscripts debhelper fakeroot dpatch quilt
```
- Download the matching source tarball from the official \BlueLatex website, for instance for 1.0.2 :
```shell
$ wget https://github.com/gnieh/bluelatex/archive/v1.0.2.tar.gz -O bluelatex_1.0.2.orig.tar.gz
```
- launch build.sh and follow instructions :
```shell
$ ./build.sh
to do build the package, launch the following :"
cd bluelatex-1.0.2

        debuild -us -uc
or for the i386 version on an amd64 box :
        debuild -us -uc -ai386
```

Works on Debian 7.7 wheezy amd64
