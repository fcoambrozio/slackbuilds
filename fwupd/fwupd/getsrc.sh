#!/bin/bash
#
# get source for fwupd
#

VERSION="1.9.19"
DOWNLOAD="https://github.com/fwupd/fwupd/archive/$VERSION/fwupd-$VERSION.tar.gz"

wget -c $DOWNLOAD
