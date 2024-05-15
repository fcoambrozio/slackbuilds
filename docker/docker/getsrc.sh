#!/bin/bash
#
# get source for docker
#

VERSION="26.1.2"
DOWNLOAD="https://github.com/moby/moby/archive/v$VERSION/moby-$VERSION.tar.gz"

wget -c $DOWNLOAD
