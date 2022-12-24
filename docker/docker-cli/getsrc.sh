#!/bin/bash
#
# get source for docker-cli
#

VERSION="20.10.22"
DOWNLOAD="https://github.com/docker/cli/archive/v$VERSION/cli-$VERSION.tar.gz"

wget -c $DOWNLOAD
