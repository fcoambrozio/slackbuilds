#!/bin/bash
#
# get source for nginx
#

VERSION="1.25.2"
DOWNLOAD="https://nginx.org/download/nginx-$VERSION.tar.gz"

wget -c $DOWNLOAD
