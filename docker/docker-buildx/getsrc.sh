#!/bin/bash
#
# get source for docker-buildx
#

VERSION="0.11.2"
DOWNLOAD="https://github.com/docker/buildx/archive/v$VERSION/buildx-$VERSION.tar.gz"

wget -c $DOWNLOAD