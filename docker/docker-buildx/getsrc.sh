#!/bin/bash
#
# get source for docker-buildx
#

VERSION="0.12.1"
DOWNLOAD="https://github.com/docker/buildx/archive/v$VERSION/buildx-$VERSION.tar.gz"

wget -c $DOWNLOAD
