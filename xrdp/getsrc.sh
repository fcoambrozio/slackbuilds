#!/bin/bash
#
# get source for xrdp - https://github.com/neutrinolabs/xrdp
#

VERSION="0.10.4.1"
DOWNLOAD="https://github.com/neutrinolabs/xrdp/releases/download/v${VERSION}/xrdp-${VERSION}.tar.gz"

wget -c $DOWNLOAD
