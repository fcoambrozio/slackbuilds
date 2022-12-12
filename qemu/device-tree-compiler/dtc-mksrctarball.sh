#!/bin/bash

git clone https://git.kernel.org/pub/scm/utils/dtc/dtc.git

cd dtc
  VERSION="$(git log --format="%ad_%h" --date=short | head -n 1 | tr -d -)"
  LONGDATE="$(git log -1 --format=%cd --date=format:%c )"
cd ..

mv dtc dtc-$VERSION

tar --exclude-vcs -cf dtc-$VERSION.tar dtc-$VERSION
xz -9 -v dtc-$VERSION.tar
touch -d "$LONGDATE" dtc-$VERSION.tar.xz

rm -rf dtc-$VERSION
