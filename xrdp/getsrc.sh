#!/bin/bash
#
# get source for xrdp - https://github.com/neutrinolabs/xrdp
#

VERSION="0.10.3"
DOWNLOAD="https://github.com/neutrinolabs/xrdp/releases/download/v${VERSION}/xrdp-${VERSION}.tar.gz"

wget -c $DOWNLOAD
