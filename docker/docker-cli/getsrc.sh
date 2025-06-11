#!/bin/bash
#
# get source for docker-cli - https://github.com/docker/cli
#

VERSION="28.2.2"
DOWNLOAD="https://github.com/docker/cli/archive/v$VERSION/cli-$VERSION.tar.gz"

wget -c $DOWNLOAD
