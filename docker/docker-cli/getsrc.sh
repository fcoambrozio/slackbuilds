#!/bin/bash
#
# get source for docker-cli
#

VERSION="27.5.1"
DOWNLOAD="https://github.com/docker/cli/archive/v$VERSION/cli-$VERSION.tar.gz"

wget -c $DOWNLOAD
