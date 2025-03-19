#!/bin/bash
#
# get source for fwupd-efi - https://github.com/fwupd/fwupd-efi
#


VERSION="1.7"
DOWNLOAD="https://github.com/fwupd/fwupd-efi/archive/refs/tags/${VERSION}.tar.gz"

wget -c $DOWNLOAD -O fwupd-efi-${VERSION}.tar.gz
