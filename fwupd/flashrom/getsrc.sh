#!/bin/bash
#
# get source for flashrom
#

VERSION="1.4.0"
DOWNLOAD="https://github.com/flashrom/flashrom/archive/refs/tags/v${VERSION}.tar.gz"

wget -c $DOWNLOAD -O flashrom-$VERSION.tar.gz