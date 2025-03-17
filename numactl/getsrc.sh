#!/bin/bash
#
# get source for numactl - https://github.com/numactl/numactl
#


VERSION="2.0.19"
DOWNLOAD="https://github.com/numactl/numactl/releases/download/v$VERSION/numactl-$VERSION.tar.gz"

wget -c $DOWNLOAD
