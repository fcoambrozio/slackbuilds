#!/bin/bash
#
# get source for cudatoolkit
#

VERSION="12.6.1"
DRVVER="560.35.03"
DOWNLOAD="https://developer.download.nvidia.com/compute/cuda/$VERSION/local_installers/cuda_${VERSION}_${DRVVER}_linux.run"

wget -c $DOWNLOAD
