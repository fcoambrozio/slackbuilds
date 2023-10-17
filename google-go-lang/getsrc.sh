#!/bin/bash
#
# get source for google-go-lang
#

VERSION="1.21.3"
BOOTSTRAP_VERSION="1.20.10"
DOWNLOAD="https://go.dev/dl/go$VERSION.src.tar.gz \
          https://go.dev/dl/go$BOOTSTRAP_VERSION.src.tar.gz"

wget -c $DOWNLOAD
