#!/bin/bash
#
# get source for python-pyudev - https://github.com/pyudev/pyudev
#

VERSION="0.24.3"
DOWNLOAD="https://github.com/pyudev/pyudev/archive/v${VERSION}/pyudev-${VERSION}.tar.gz"

wget -c $DOWNLOAD
