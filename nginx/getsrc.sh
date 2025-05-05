#!/bin/bash
#
# get source for nginx
#

VERSION="1.28.0"
DOWNLOAD="https://nginx.org/download/nginx-$VERSION.tar.gz"

wget -c $DOWNLOAD
