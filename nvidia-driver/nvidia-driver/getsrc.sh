#!/bin/bash
#
# get source for nvidia-driver - https://www.nvidia.com/en-us/drivers/unix/
#

VERSION="575.64.05"
DOWNLOAD="https://us.download.nvidia.com/XFree86/Linux-x86_64/$VERSION/NVIDIA-Linux-x86_64-$VERSION.run \
          https://download.nvidia.com/XFree86/nvidia-installer/nvidia-installer-$VERSION.tar.bz2 \
          https://download.nvidia.com/XFree86/nvidia-modprobe/nvidia-modprobe-$VERSION.tar.bz2 \
          https://download.nvidia.com/XFree86/nvidia-persistenced/nvidia-persistenced-$VERSION.tar.bz2 \
          https://download.nvidia.com/XFree86/nvidia-settings/nvidia-settings-$VERSION.tar.bz2 \
          https://download.nvidia.com/XFree86/nvidia-xconfig/nvidia-xconfig-$VERSION.tar.bz2"

wget -c $DOWNLOAD
