#!/bin/bash
#
# get source for abseil-cpp
#

VERSION="20240116.1"
DOWNLOAD="https://github.com/abseil/abseil-cpp/archive/$VERSION/abseil-cpp-$VERSION.tar.gz"

wget -c $DOWNLOAD
