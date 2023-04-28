#!/bin/bash
#
# get source for nginx
#

VERSION="1.24.0"
DOWNLOAD="https://nginx.org/download/nginx-$VERSION.tar.gz"

wget -c $DOWNLOAD
