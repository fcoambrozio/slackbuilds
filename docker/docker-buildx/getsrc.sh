#!/bin/bash
#
# get source for docker-buildx
#

VERSION="0.19.3"
DOWNLOAD="https://github.com/docker/buildx/archive/v$VERSION/buildx-$VERSION.tar.gz"

wget -c $DOWNLOAD
