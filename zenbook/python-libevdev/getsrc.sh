#!/bin/bash
#
# get source for python-libevdev
#

VERSION="0.11"
DOWNLOAD="https://gitlab.freedesktop.org/libevdev/python-libevdev/-/archive/$VERSION/python-libevdev-$VERSION.tar.bz2"

wget -c $DOWNLOAD
