#!/bin/bash

git clone git://git.ffmpeg.org/rtmpdump
commit=6f6bb1353fc84f4cc37138baa99f586750028a01

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
