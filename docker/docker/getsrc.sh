#!/bin/bash
#
# get source for docker
#

VERSION="25.0.0"
DOWNLOAD="https://github.com/moby/moby/archive/v$VERSION/moby-$VERSION.tar.gz"

wget -c $DOWNLOAD
