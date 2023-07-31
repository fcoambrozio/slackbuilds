#!/bin/bash
#
# get source for docker-compose
#

VERSION="2.20.2"
DOWNLOAD="https://github.com/docker/compose/archive/v$VERSION/compose-$VERSION.tar.gz"

wget -c $DOWNLOAD
