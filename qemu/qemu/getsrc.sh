#!/bin/bash
#
# get source for qemu - https://www.qemu.org
#

VERSION="10.0.0"
DOWNLOAD="https://download.qemu.org/qemu-$VERSION.tar.xz"

wget -c $DOWNLOAD
