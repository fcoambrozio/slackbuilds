#!/bin/bash
#
# get source for nginx
#

VERSION="1.29.1"
DOWNLOAD="https://nginx.org/download/nginx-$VERSION.tar.gz"

wget -c $DOWNLOAD
