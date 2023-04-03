#!/bin/bash
#
# get source for docker
#

VERSION="23.0.2"
DOWNLOAD="https://github.com/moby/moby/archive/v$VERSION/moby-$VERSION.tar.gz"

wget -c $DOWNLOAD
