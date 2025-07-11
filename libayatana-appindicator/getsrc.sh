#!/bin/bash
#
# get source for libayatana-appindicator
#

VERSION="0.5.94"
DOWNLOAD="https://github.com/AyatanaIndicators/libayatana-appindicator/archive/refs/tags/$VERSION.tar.gz"

wget -c $DOWNLOAD -O libayatana-appindicator-$VERSION.tar.gz
