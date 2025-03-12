#!/bin/bash
#
# get source for gperftools - https://github.com/gperftools/gperftools
#


VERSION="2.16.90"
DOWNLOAD="https://github.com/gperftools/gperftools/archive/gperftools-$VERSION/gperftools-$VERSION.tar.gz"

wget -c $DOWNLOAD
