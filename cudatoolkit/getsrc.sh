#!/bin/bash
#
# get source for cudatoolkit - https://developer.nvidia.com/cuda-downloads
#

VERSION="13.0.0"
DRVVER="580.65.06"
DOWNLOAD="https://developer.download.nvidia.com/compute/cuda/$VERSION/local_installers/cuda_${VERSION}_${DRVVER}_linux.run"

wget -c $DOWNLOAD
