#!/bin/bash
#
# get source for tini
#

VERSION="0.19.0"
DOWNLOAD="https://github.com/krallin/tini/archive/v$VERSION/tini-$VERSION.tar.gz"

wget -c $DOWNLOAD
