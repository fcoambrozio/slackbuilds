#!/bin/bash
#
# get source for docker
#

VERSION="27.2.0"
DOWNLOAD="https://github.com/moby/moby/archive/v$VERSION/moby-$VERSION.tar.gz"

wget -c $DOWNLOAD
