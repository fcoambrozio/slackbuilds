#!/bin/bash
#
# get source for protobuf-c
#

VERSION="1.5.0"
DOWNLOAD="https://github.com/protobuf-c/protobuf-c/releases/download/v$VERSION/protobuf-c-$VERSION.tar.gz"

wget -c $DOWNLOAD
