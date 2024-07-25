#!/bin/bash
#
# get source for containerd
#

VERSION="1.7.20"
DOWNLOAD="https://github.com/containerd/containerd/archive/v$VERSION/containerd-$VERSION.tar.gz"

wget -c $DOWNLOAD
