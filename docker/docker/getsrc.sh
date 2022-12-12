#!/bin/bash
#
# get source for docker
#

VERSION="20.10.21"
DOWNLOAD="https://github.com/moby/moby/archive/v$VERSION/moby-$VERSION.tar.gz"

wget -c $DOWNLOAD
