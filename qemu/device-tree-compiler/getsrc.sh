#!/bin/bash
#
# get source for device-tree-compiler
#

VERSION="1.6.1"
DOWNLOAD="https://mirrors.edge.kernel.org/pub/software/utils/dtc/dtc-$VERSION.tar.xz"

wget -c $DOWNLOAD
