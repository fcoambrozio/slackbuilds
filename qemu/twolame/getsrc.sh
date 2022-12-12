#!/bin/bash
#
# get source for twolame - https://www.twolame.org/
#

VERSION="0.4.0"
DOWNLOAD="https://github.com/njh/twolame/releases/download/$VERSION/twolame-$VERSION.tar.gz"

wget -c $DOWNLOAD
