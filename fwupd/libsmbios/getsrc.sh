#!/bin/bash
#
# get source for libsmbios
#

VERSION="2.4.3"
DOWNLOAD="https://github.com/dell/libsmbios/archive/v$VERSION/libsmbios-$VERSION.tar.gz"

wget -c $DOWNLOAD
