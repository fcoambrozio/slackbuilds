#!/bin/bash
#
# get source for libayatana-indicator
#

VERSION="0.9.4"
DOWNLOAD="https://github.com/AyatanaIndicators/libayatana-indicator/archive/refs/tags/$VERSION.tar.gz"

wget -c $DOWNLOAD -O libayatana-indicator-$VERSION.tar.gz
