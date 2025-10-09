#!/bin/bash
#
# get source for docker-buildx - https://github.com/docker/buildx
#

VERSION="0.29.1"
DOWNLOAD="https://github.com/docker/buildx/archive/v$VERSION/buildx-$VERSION.tar.gz"

wget -c $DOWNLOAD
