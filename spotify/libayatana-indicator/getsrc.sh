#!/bin/bash
#
# get source for libayatana-indicator
#

VERSION="0.9.3"
DOWNLOAD="https://github.com/AyatanaIndicators/libayatana-indicator/archive/refs/tags/$VERSION.tar.gz"

wget -c $DOWNLOAD -O libayatana-indicator-$VERSION.tar.gz
