#!/bin/bash
#
# get source for i2c-tools
#

VERSION="4.3"
DOWNLOAD="https://www.kernel.org/pub/software/utils/i2c-tools/i2c-tools-$VERSION.tar.xz"

wget -c $DOWNLOAD
