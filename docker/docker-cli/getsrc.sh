#!/bin/bash
#
# get source for docker-cli
#

VERSION="26.1.2"
DOWNLOAD="https://github.com/docker/cli/archive/v$VERSION/cli-$VERSION.tar.gz"

wget -c $DOWNLOAD
