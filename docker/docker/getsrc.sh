#!/bin/bash
#
# get source for docker - https://github.com/moby/moby
#

PKGNAME="docker"
VERSION="29.1.3"

SOURCE=(
  "moby-${PKGNAME}-v${VERSION}.tar.gz|https://github.com/moby/moby/archive/refs/tags/${PKGNAME}-v${VERSION}.tar.gz"
)

for src in ${SOURCE[*]}
do
  _filename=$(echo $src | cut -f1 -d"|")
  _download=$(echo $src | cut -f2 -d"|")
  wget -c $_download -O $_filename
done
