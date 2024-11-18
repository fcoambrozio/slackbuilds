#!/bin/bash
#
# get source for appstream
#

VERSION="1.0.3"
DOWNLOAD="https://github.com/ximion/appstream/archive/refs/tags/v${VERSION}.tar.gz"

wget -c $DOWNLOAD -O appstream-$VERSION.tar.gz
