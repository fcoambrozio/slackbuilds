#!/bin/bash

git clone git://git.ffmpeg.org/rtmpdump
commit=138fdb258d9fc26f1843fd1b891180416c9dc575

cd rtmpdump
  git checkout $commit
  VERSION="$(git log --format="%ad_%h" --date=short | head -n 1 | tr -d -)"
  LONGDATE="$(git log -1 --format=%cd --date=format:%c )"
cd ..

mv rtmpdump rtmpdump-$VERSION

tar --exclude-vcs -cf rtmpdump-$VERSION.tar rtmpdump-$VERSION
xz -9 rtmpdump-$VERSION.tar
touch -d "$LONGDATE" rtmpdump-$VERSION.tar.xz

rm -rf rtmpdump-$VERSION
