#!/bin/bash
#
# get source for srt
#

VERSION="1.5.5"
VERSADD="-rc.0a"
SRCEXT="tar.gz"
DOWNLOAD="https://github.com/Haivision/srt/archive/refs/tags/v${VERSION}${VERSADD}.${SRCEXT}"

wget -c $DOWNLOAD -O srt-${VERSION}${VERSADD}.${SRCEXT}
