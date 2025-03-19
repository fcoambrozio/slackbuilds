#!/bin/bash
#
# get source for ayatana-ido
#

VERSION="0.10.4"
DOWNLOAD="https://github.com/AyatanaIndicators/ayatana-ido/archive/refs/tags/$VERSION.tar.gz"

wget -c $DOWNLOAD -O ayatana-ido-$VERSION.tar.gz
