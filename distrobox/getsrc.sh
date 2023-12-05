#!/bin/bash
#
# get source for distrobox
#

VERSION="1.6.0.1"
DOWNLOAD="https://github.com/89luca89/distrobox/archive/refs/tags/$VERSION.tar.gz"

wget -c $DOWNLOAD -O distrobox-$VERSION.tar.gz
