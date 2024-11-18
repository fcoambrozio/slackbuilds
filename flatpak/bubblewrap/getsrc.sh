#!/bin/bash
#
# get source for bubblewrap
#

VERSION="0.11.0"
DOWNLOAD="https://github.com/containers/bubblewrap/releases/download/v${VERSION}/bubblewrap-${VERSION}.tar.xz"

wget -c $DOWNLOAD
