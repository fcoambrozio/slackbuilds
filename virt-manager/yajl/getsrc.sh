#!/bin/bash
#
# get source for yajl
#

VERSION="2.1.0"
DOWNLOAD="https://codeload.github.com/lloyd/yajl/tar.gz/refs/tags/$VERSION"

wget -c $DOWNLOAD -O yajl-$VERSION.tar.gz
