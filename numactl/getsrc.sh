#!/bin/bash
#
# get source for numactl
#

VERSION="2.0.16"
DOWNLOAD="https://github.com/numactl/numactl/releases/download/v$VERSION/numactl-$VERSION.tar.gz"

wget -c $DOWNLOAD
