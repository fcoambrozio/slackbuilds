#!/bin/bash
#
# get source for wolfssl
#

VERSION="5.8.2"
DOWNLOAD="https://github.com/wolfSSL/wolfssl/archive/refs/tags/v$VERSION-stable.tar.gz"

wget -c $DOWNLOAD -O wolfssl-$VERSION-stable.tar.gz
