#!/bin/bash
#
# get source for protobuf
#

VERSION="25.1"
DOWNLOAD="https://github.com/protocolbuffers/protobuf/archive/v$VERSION/protobuf-$VERSION.tar.gz"

wget -c $DOWNLOAD
