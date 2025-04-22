#!/bin/bash
#
# get sources for containerd - https://github.com/containerd/containerd
#


VERSION="2.0.5"
DOWNLOAD="https://github.com/containerd/containerd/archive/v$VERSION/containerd-$VERSION.tar.gz"

wget -c $DOWNLOAD
