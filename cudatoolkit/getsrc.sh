#!/bin/bash
#
# get source for cudatoolkit - https://developer.nvidia.com/cuda-downloads
#


VERSION="12.8.1"
DRVVER="570.124.06"
DOWNLOAD="https://developer.download.nvidia.com/compute/cuda/$VERSION/local_installers/cuda_${VERSION}_${DRVVER}_linux.run"

wget -c $DOWNLOAD
