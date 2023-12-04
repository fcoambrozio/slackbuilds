#!/bin/bash

git clone https://git.code.sf.net/p/libquicktime/git libquicktime-git

cd libquicktime-git
  VERSION="$(git log --format="%ad_%h" --date=short | head -n 1 | tr -d -)"
  LONGDATE="$(git log -1 --format=%cd --date=format:%c )"
cd ..

mv libquicktime-git libquicktime-$VERSION

tar --exclude-vcs -cJf libquicktime-$VERSION.tar.xz libquicktime-$VERSION
touch -d "$LONGDATE" libquicktime-$VERSION.tar.xz

rm -rf libquicktime-$VERSION
