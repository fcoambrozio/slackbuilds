#!/bin/bash
#
# get source for google-go-lang
#

VERSION="1.20.4"
GOBOOTSTRAPSRC="https://dl.google.com/go/go1.4-bootstrap-20171003.tar.gz"
DOWNLOAD="https://go.dev/dl/go$VERSION.src.tar.gz"

case "$( uname -m )" in
    i?86) ARCH=i586 ;;
    arm*) ARCH=arm ;;
       *) ARCH=$( uname -m ) ;;
esac

if [ "$ARCH" = "i586" ]; then
    wget -c $GOBOOTSTRAPSRC
fi

wget -c $DOWNLOAD
