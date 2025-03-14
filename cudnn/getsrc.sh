#!/bin/bash
#
# get source for cudnn - https://developer.nvidia.com/cudnn
#


CUDAVER=12
VERSION=9.8.0.87
DOWNLOAD="https://developer.download.nvidia.com/compute/cudnn/redist/cudnn/linux-x86_64/cudnn-linux-x86_64-${VERSION}_cuda${CUDAVER}-archive.tar.xz"

wget -c $DOWNLOAD

