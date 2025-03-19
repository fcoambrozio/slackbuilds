#!/bin/bash
#
# get source for runc - https://github.com/opencontainers/runc
#


VERSION="1.2.6"
DOWNLOAD="https://github.com/opencontainers/runc/archive/v$VERSION/runc-$VERSION.tar.gz"

wget -c $DOWNLOAD
