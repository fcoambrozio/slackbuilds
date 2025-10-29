#!/bin/bash
#
# get source for libnvidia-container - https://github.com/NVIDIA/libnvidia-container
#

VERSION="1.18.0"
DOWNLOAD="https://github.com/NVIDIA/libnvidia-container/archive/v${VERSION}/libnvidia-container-${VERSION}.tar.gz"

wget -c $DOWNLOAD
