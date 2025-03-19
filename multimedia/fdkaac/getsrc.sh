#!/bin/bash
#
# get source for fdkaac - https://github.com/nu774/fdkaac/
#


VERSION="1.0.6"
DOWNLOAD="https://github.com/nu774/fdkaac/archive/refs/tags/v${VERSION}/fdkaac-${VERSION}.tar.gz"

wget -c $DOWNLOAD
