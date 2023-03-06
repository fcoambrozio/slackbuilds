#!/bin/bash
#
# get source for containerd
#

VERSION="1.6.19"
DOWNLOAD="https://github.com/containerd/containerd/archive/v$VERSION/containerd-$VERSION.tar.gz"

wget -c $DOWNLOAD
