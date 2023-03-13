#!/bin/bash
#
# get source for snappy - https://github.com/google/snappy
#

VERSION="1.1.10"
DOWNLOAD="https://github.com/google/snappy/archive/$VERSION/snappy-$VERSION.tar.gz"

wget -c $DOWNLOAD
