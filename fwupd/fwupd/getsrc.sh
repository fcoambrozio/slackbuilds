#!/bin/bash
#
# get source for fwupd
#

VERSION="2.0.4"
DOWNLOAD="https://github.com/fwupd/fwupd/releases/download/$VERSION/fwupd-$VERSION.tar.xz"

wget -c $DOWNLOAD
