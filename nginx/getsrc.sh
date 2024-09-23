#!/bin/bash
#
# get source for nginx
#

VERSION="1.26.2"
DOWNLOAD="https://nginx.org/download/nginx-$VERSION.tar.gz"

wget -c $DOWNLOAD
