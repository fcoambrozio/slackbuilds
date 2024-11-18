#!/bin/bash
#
# get source for flatpak
#

VERSION="1.15.10"
DOWNLOAD="https://github.com/flatpak/flatpak/releases/download/${VERSION}/flatpak-${VERSION}.tar.xz"

wget -c $DOWNLOAD