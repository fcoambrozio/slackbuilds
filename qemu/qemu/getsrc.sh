#!/bin/bash
#
# get source for qemu
#

VERSION="8.1.0"
DOWNLOAD="https://download.qemu.org/qemu-$VERSION.tar.xz"

wget -c $DOWNLOAD
