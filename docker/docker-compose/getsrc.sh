#!/bin/bash
#
# get source for docker-compose
#

VERSION="2.20.0"
DOWNLOAD="https://github.com/docker/compose/archive/v$VERSION/compose-$VERSION.tar.gz"

wget -c $DOWNLOAD
