#!/bin/bash
#
# get source for libnvidia-container
#

VERSION="1.16.2"
DOWNLOAD="https://github.com/NVIDIA/libnvidia-container/archive/v${VERSION}/libnvidia-container-${VERSION}.tar.gz"

wget -c $DOWNLOAD
