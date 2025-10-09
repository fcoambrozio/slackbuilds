#!/bin/bash
#
# get source for qemu - https://www.qemu.org
#

VERSION="10.1.1"
DOWNLOAD="https://download.qemu.org/qemu-$VERSION.tar.xz"

wget -c $DOWNLOAD
