#!/bin/bash
#
# get source for pefile - https://github.com/erocarrera/pefile
#


VERSION="2024.8.26"
DOWNLOAD="https://github.com/erocarrera/pefile/releases/download/v${VERSION}/pefile-${VERSION}.tar.gz"

wget -c $DOWNLOAD
