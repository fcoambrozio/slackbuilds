#!/bin/bash
#
# get source for nvidia-kernel
#

VERSION="565.77"
DOWNLOAD="https://download.nvidia.com/XFree86/Linux-x86_64/$VERSION/NVIDIA-Linux-x86_64-$VERSION.run"

wget -c $DOWNLOAD
