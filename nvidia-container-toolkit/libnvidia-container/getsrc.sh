#!/bin/bash
#
# get source for libnvidia-container
#

VERSION="1.17.4"
DOWNLOAD="https://github.com/NVIDIA/libnvidia-container/archive/v${VERSION}/libnvidia-container-${VERSION}.tar.gz"

wget -c $DOWNLOAD
