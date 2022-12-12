#!/bin/bash
#
# get source for vde2
#

VERSION="2.3.3"
DOWNLOAD="https://github.com/virtualsquare/vde-2/archive/refs/tags/v$VERSION.tar.gz"

wget -c $DOWNLOAD -O vde-2-$VERSION.tar.gz
