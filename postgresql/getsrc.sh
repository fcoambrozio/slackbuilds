#!/bin/bash
#
# get source for postgresql
#

VERSION="16.4"
DOWNLOAD="https://ftp.postgresql.org/pub/source/v$VERSION/postgresql-$VERSION.tar.bz2"

wget -c $DOWNLOAD
