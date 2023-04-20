#!/bin/bash
#
# get source for gsoap - https://www.cs.fsu.edu/~engelen/soap.html
#

MJRVER="2.8"
VERSION="$MJRVER.127"
DOWNLOAD="https://sinalbr.dl.sourceforge.net/project/gsoap2/gsoap_$VERSION.zip"

wget -c $DOWNLOAD
unzip -q gsoap_$VERSION.zip
mv gsoap-$MJRVER gsoap-$VERSION
tar -cf gsoap-$VERSION.tar gsoap-$VERSION
plzip -9 -v gsoap-$VERSION.tar
rm -f gsoap_$VERSION.zip
rm -rf gsoap-$VERSION
