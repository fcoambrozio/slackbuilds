#!/bin/bash
#
# get source for sof-bin
#

VERSION="2.2.3"
DOWNLOAD="https://github.com/thesofproject/sof-bin/releases/download/v$VERSION/sof-bin-v$VERSION.tar.gz"

wget -c $DOWNLOAD
