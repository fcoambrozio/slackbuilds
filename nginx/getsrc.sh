#!/bin/bash
#
# get source for nginx
#

VERSION="1.25.1"
DOWNLOAD="https://nginx.org/download/nginx-$VERSION.tar.gz"

wget -c $DOWNLOAD
