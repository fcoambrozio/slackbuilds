#!/bin/bash
#
# get source for containerd
#

VERSION="2.0.2"
DOWNLOAD="https://github.com/containerd/containerd/archive/v$VERSION/containerd-$VERSION.tar.gz"

wget -c $DOWNLOAD
