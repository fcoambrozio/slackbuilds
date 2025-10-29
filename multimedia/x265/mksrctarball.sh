#!/bin/bash

git clone https://bitbucket.org/multicoreware/x265_git.git x265

cd x265
  git checkout master
  VERSION="$(git log --format="%ad_%h" --date=short | head -n 1 | tr -d -)"
  LONGDATE="$(git log -1 --format=%cd --date=format:%c )"
cd ..

mv x265 x265-$VERSION

tar --exclude-vcs -cf x265-$VERSION.tar x265-$VERSION
plzip -9 -v x265-$VERSION.tar
touch -d "$LONGDATE" x265-$VERSION.tar.lz

rm -rf x265-$VERSION
