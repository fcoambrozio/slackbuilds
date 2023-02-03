#!/bin/bash
#
# get source for gtest - https://github.com/google/googletest
#

VERSION="1.13.0"
DOWNLOAD="https://github.com/google/googletest/archive/refs/tags/v1.13.0.tar.gz"

wget -c $DOWNLOAD -O googletest-$VERSION.tar.gz
