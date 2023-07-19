#!/bin/bash
#
# get source for docker
#

VERSION="24.0.4"
DOWNLOAD="https://github.com/moby/moby/archive/v$VERSION/moby-$VERSION.tar.gz"

wget -c $DOWNLOAD
