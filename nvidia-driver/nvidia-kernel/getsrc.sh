#!/bin/bash
#
# get source for nvidia-kernel - https://www.nvidia.com/en-us/drivers/unix/
#

VERSION="575.51.02"
DOWNLOAD="https://download.nvidia.com/XFree86/Linux-x86_64/$VERSION/NVIDIA-Linux-x86_64-$VERSION.run"

wget -c $DOWNLOAD
