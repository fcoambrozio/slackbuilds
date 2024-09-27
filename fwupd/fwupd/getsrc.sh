#!/bin/bash
#
# get source for fwupd
#

VERSION="1.9.25"
DOWNLOAD="https://github.com/fwupd/fwupd/releases/download/$VERSION/fwupd-$VERSION.tar.xz"

wget -c $DOWNLOAD
