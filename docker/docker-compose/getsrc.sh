#!/bin/bash
#
# get source for docker-compose
#

VERSION="2.29.3"
DOWNLOAD="https://github.com/docker/compose/archive/v$VERSION/compose-$VERSION.tar.gz"

wget -c $DOWNLOAD
