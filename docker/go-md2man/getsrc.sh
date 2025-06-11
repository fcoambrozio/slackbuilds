#!/bin/bash
#
# get sources for go-md2man - https://github.com/cpuguy83/go-md2man
#

VERSION="2.0.7"
DOWNLOAD="https://github.com/cpuguy83/go-md2man/archive/v${VERSION}/go-md2man-${VERSION}.tar.gz"

wget -c $DOWNLOAD
