#!/bin/bash
#
# get source for cudatoolkit
#

VERSION="12.8.0"
DRVVER="570.86.10"
DOWNLOAD="https://developer.download.nvidia.com/compute/cuda/$VERSION/local_installers/cuda_${VERSION}_${DRVVER}_linux.run"

wget -c $DOWNLOAD
