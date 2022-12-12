#!/bin/bash
#
# get source for benchmark - https://github.com/google/benchmark
#

VERSION="1.7.1"
DOWNLOAD="https://github.com/google/benchmark/archive/v$VERSION/benchmark-$VERSION.tar.gz"

wget -c $DOWNLOAD
