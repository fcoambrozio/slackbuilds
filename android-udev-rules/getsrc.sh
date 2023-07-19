#!/bin/bash
#
# get source for android-udev-rules
#

PKGNAM="android-udev-rules"
VERSION="20230614"
DOWNLOAD="https://github.com/M0Rf30/android-udev-rules/archive/refs/tags/$VERSION.tar.gz"

wget -c $DOWNLOAD -O $PKGNAM-$VERSION.tar.gz
