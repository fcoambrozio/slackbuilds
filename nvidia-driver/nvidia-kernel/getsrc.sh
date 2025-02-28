#!/bin/bash
#
# get source for nvidia-kernel
#

VERSION="570.124.04"
DOWNLOAD="https://download.nvidia.com/XFree86/Linux-x86_64/$VERSION/NVIDIA-Linux-x86_64-$VERSION.run"

wget -c $DOWNLOAD
