#!/bin/bash
#
# get source for wolfssl
#

VERSION="5.7.6"
DOWNLOAD="https://github.com/wolfssl/wolfssl/archive/refs/tags/v$VERSION-stable.tar.gz"

wget -c $DOWNLOAD -O wolfssl-$VERSION-stable.tar.gz
