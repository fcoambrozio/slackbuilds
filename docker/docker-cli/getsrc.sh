#!/bin/bash
#
# get source for docker-cli
#

VERSION="24.0.7"
DOWNLOAD="https://github.com/docker/cli/archive/v$VERSION/cli-$VERSION.tar.gz"

wget -c $DOWNLOAD
