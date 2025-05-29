#!/bin/bash
#
# get source for python-xlib - https://github.com/python-xlib/python-xlib
#

VERSION="0.33"
DOWNLOAD="https://github.com/python-xlib/python-xlib/releases/download/${VERSION}/python-xlib-${VERSION}.tar.gz"

wget -c $DOWNLOAD
