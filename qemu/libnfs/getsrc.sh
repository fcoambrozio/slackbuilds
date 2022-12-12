#!/bin/bash
#
# get source for libnfs - https://github.com/sahlberg/libnfs
#

VERSION="5.0.2"
DOWNLOAD="https://github.com/sahlberg/libnfs/archive/libnfs-$VERSION/libnfs-libnfs-$VERSION.tar.gz"

wget -c $DOWNLOAD
