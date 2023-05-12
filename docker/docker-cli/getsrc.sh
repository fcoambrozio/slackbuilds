#!/bin/bash
#
# get source for docker-cli
#

VERSION="23.0.6"
DOWNLOAD="https://github.com/docker/cli/archive/v$VERSION/cli-$VERSION.tar.gz"

wget -c $DOWNLOAD
