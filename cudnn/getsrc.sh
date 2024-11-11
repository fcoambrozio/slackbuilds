#!/bin/bash
#
# get source for cudnn
#

CUDAMJVER=12
VERSION=9.5.1.17
DOWNLOAD="https://developer.download.nvidia.com/compute/cudnn/redist/cudnn/linux-x86_64/cudnn-linux-x86_64-${VERSION}_cuda${CUDAMJVER}-archive.tar.xz"

wget -c $DOWNLOAD

