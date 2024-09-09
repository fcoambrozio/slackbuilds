#!/bin/bash
#
# get source for runc
#

VERSION="1.1.14"
DOWNLOAD="https://github.com/opencontainers/runc/archive/v$VERSION/runc-$VERSION.tar.gz"

wget -c $DOWNLOAD
