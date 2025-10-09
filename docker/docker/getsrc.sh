#!/bin/bash
#
# get source for docker - https://github.com/moby/moby
#

VERSION="28.5.0"
DOWNLOAD="https://github.com/moby/moby/archive/v$VERSION/moby-$VERSION.tar.gz"

wget -c $DOWNLOAD
