#!/bin/bash
#
# get source for qemu
#

VERSION="9.1.1"
DOWNLOAD="https://download.qemu.org/qemu-$VERSION.tar.xz"

wget -c $DOWNLOAD
