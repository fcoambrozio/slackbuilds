#!/bin/bash
#
# get source for nvidia-kernel - https://www.nvidia.com/en-us/drivers/unix/
#

VERSION="580.82.09"
DOWNLOAD="https://us.download.nvidia.com/XFree86/Linux-x86_64/$VERSION/NVIDIA-Linux-x86_64-$VERSION.run"

wget -c $DOWNLOAD
