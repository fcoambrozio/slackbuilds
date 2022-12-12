#!/bin/bash
#
# get source for gtest - https://github.com/google/googletest
#

VERSION="1.12.1"
DOWNLOAD="https://github.com/google/googletest/archive/release-$VERSION/googletest-release-$VERSION.tar.gz"

wget -c $DOWNLOAD
