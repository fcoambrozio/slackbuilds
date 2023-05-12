#!/bin/bash
#
# get source for docker
#

VERSION="23.0.6"
DOWNLOAD="https://github.com/moby/moby/archive/v$VERSION/moby-$VERSION.tar.gz"

wget -c $DOWNLOAD
