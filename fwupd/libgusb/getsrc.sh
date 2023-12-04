#!/bin/bash
#
# get source for libgusb
#

VERSION="0.4.8"
DOWNLOAD="https://github.com/hughsie/libgusb/releases/download/$VERSION/libgusb-$VERSION.tar.xz"

wget -c $DOWNLOAD
