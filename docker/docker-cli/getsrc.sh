#!/bin/bash
#
# get source for docker-cli
#

VERSION="25.0.3"
DOWNLOAD="https://github.com/docker/cli/archive/v$VERSION/cli-$VERSION.tar.gz"

wget -c $DOWNLOAD
