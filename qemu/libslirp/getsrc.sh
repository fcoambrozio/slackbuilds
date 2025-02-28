#!/bin/bash
#
# get source for libslirp
#

VERSION="4.9.0"
DOWNLOAD="https://gitlab.freedesktop.org/slirp/libslirp/-/archive/v$VERSION/libslirp-v$VERSION.tar.gz"

wget -c $DOWNLOAD
