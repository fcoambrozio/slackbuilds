#!/bin/bash
#
# get source for qemu
#

VERSION="9.0.0"
DOWNLOAD="https://download.qemu.org/qemu-$VERSION.tar.xz"

wget -c $DOWNLOAD
