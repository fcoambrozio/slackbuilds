#!/bin/bash
#
# get source for libnvidia-container - https://github.com/NVIDIA/libnvidia-container
#

VERSION="1.18.0"
MODPROBEVER="550.54.14"

PKGNAME="libnvidia-container"
SOURCE=(
  "${PKGNAME}-${VERSION}.tar.gz|https://github.com/NVIDIA/${PKGNAME}/archive/v${VERSION}/${PKGNAME}-${VERSION}.tar.gz"
  "nvidia-modprobe-${MODPROBEVER}.tar.gz|https://github.com/NVIDIA/nvidia-modprobe/archive/${MODPROBEVER}.tar.gz"
)

for src in ${SOURCE[*]}
do
  _filename=$(echo $src | cut -f1 -d"|")
  _download=$(echo $src | cut -f2 -d"|")
  wget -c $_download -O $_filename
done
