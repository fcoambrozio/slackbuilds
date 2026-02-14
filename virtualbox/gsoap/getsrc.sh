#!/bin/bash
#
# get source for gsoap - https://sourceforge.net/projects/gsoap2/
#

MJRVER="2.8"
VERSION="$MJRVER.140"
DOWNLOAD="https://sinalbr.dl.sourceforge.net/project/gsoap2/gsoap_$VERSION.zip"

wget -c $DOWNLOAD
unzip -q gsoap_$VERSION.zip
mv gsoap-$MJRVER gsoap-$VERSION
tar -cf gsoap-$VERSION.tar gsoap-$VERSION
plzip -9 -v gsoap-$VERSION.tar
rm -f gsoap_$VERSION.zip
rm -rf gsoap-$VERSION
