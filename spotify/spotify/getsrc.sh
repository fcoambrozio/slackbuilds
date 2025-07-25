#!/bin/bash
#
# get source for spotify
#

case "$( uname -m )" in
    i?86) ARCH=i586 ;;
    arm*) ARCH=arm ;;
       *) ARCH=$( uname -m ) ;;
esac

if [ "$ARCH" = "x86_64" ]; then
    DOWNLOAD="https://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.2.63.394.g126b0d89_amd64.deb"
else
    DOWNLOAD="http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.0.72.117.g6bd7cc73-35_i386.deb"
fi

wget -c $DOWNLOAD
