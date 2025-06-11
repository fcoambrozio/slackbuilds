#!/bin/bash
#
# get source for docker - https://github.com/moby/moby
#

VERSION="28.2.2"
DOWNLOAD="https://github.com/moby/moby/archive/v$VERSION/moby-$VERSION.tar.gz"

wget -c $DOWNLOAD
