#!/bin/bash
#
# get source for ostree
#

VERSION="2024.9"
DOWNLOAD="https://github.com/ostreedev/ostree/releases/download/v${VERSION}/libostree-${VERSION}.tar.xz"

wget -c $DOWNLOAD
