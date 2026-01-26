#!/bin/bash
#
# get source for libnvidia-container
#

VERSION="1.18.2"
DOWNLOAD="https://github.com/NVIDIA/nvidia-container-toolkit/archive/v${VERSION}/nvidia-container-toolkit-${VERSION}.tar.gz"

wget -c $DOWNLOAD
