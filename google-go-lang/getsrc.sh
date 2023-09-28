#!/bin/bash
#
# get source for google-go-lang
#

VERSION="1.21.1"
BOOTSTRAP_VERSION="1.19.13"
DOWNLOAD="https://go.dev/dl/go$VERSION.src.tar.gz \
          https://go.dev/dl/go$BOOTSTRAP_VERSION.src.tar.gz"

wget -c $DOWNLOAD
