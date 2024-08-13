#!/bin/bash
#
# get source for fwupd
#

VERSION="1.9.23"
DOWNLOAD="https://github.com/fwupd/fwupd/archive/$VERSION/fwupd-$VERSION.tar.gz"

wget -c $DOWNLOAD
