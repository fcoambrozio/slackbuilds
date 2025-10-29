#!/bin/bash
#
# get source for libfdk-aac - https://github.com/mstorsjo/fdk-aac
#

VERSION="2.0.3"
DOWNLOAD="https://github.com/mstorsjo/fdk-aac/archive/v${VERSION}/fdk-aac-${VERSION}.tar.gz"

wget -c $DOWNLOAD
