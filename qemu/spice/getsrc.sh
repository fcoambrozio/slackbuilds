#!/bin/bash
#
# get source for spice - https://www.spice-space.org
#

VERSION="0.16.0"
DOWNLOAD="https://www.spice-space.org/download/releases/spice-server/spice-$VERSION.tar.bz2"

wget -c $DOWNLOAD
