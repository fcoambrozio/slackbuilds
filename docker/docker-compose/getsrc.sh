#!/bin/bash
#
# get source for docker-compose - https://github.com/docker/compose
#

VERSION="2.37.0"
DOWNLOAD="https://github.com/docker/compose/archive/v$VERSION/compose-$VERSION.tar.gz"

wget -c $DOWNLOAD
