#!/bin/bash
#
# get source for gtest - https://github.com/google/googletest
#

VERSION="1.14.0"
DOWNLOAD="https://github.com/google/googletest/archive/refs/tags/v$VERSION.tar.gz"

wget -c $DOWNLOAD -O googletest-$VERSION.tar.gz
