#!/bin/bash
#
# get source for cudatoolkit - https://developer.nvidia.com/cuda-downloads
#

VERSION="12.9.1"
DRVVER="575.57.08"
DOWNLOAD="https://developer.download.nvidia.com/compute/cuda/$VERSION/local_installers/cuda_${VERSION}_${DRVVER}_linux.run"

wget -c $DOWNLOAD
