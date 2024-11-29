#!/bin/bash
#
# get source for nvidia-kernel
#

VERSION="550.135"
DOWNLOAD="https://download.nvidia.com/XFree86/Linux-x86_64/$VERSION/NVIDIA-Linux-x86_64-$VERSION.run"

wget -c $DOWNLOAD
