#!/bin/bash
#
# get source for nginx
#

VERSION="1.29.3"
DOWNLOAD="https://nginx.org/download/nginx-$VERSION.tar.gz"

wget -c $DOWNLOAD
