#!/bin/bash
#
# get source for google-go-lang - https://go.dev/dl/
#


VERSION="1.24.1"
DOWNLOAD="https://go.dev/dl/go$VERSION.src.tar.gz"

wget -c $DOWNLOAD
