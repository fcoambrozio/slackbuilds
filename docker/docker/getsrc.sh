#!/bin/bash
#
# get source for docker
#

VERSION="27.1.1"
DOWNLOAD="https://github.com/moby/moby/archive/v$VERSION/moby-$VERSION.tar.gz"

wget -c $DOWNLOAD
