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
    DOWNLOAD="http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.2.18.999.g9b38fc27_amd64.deb"
else
    DOWNLOAD="http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.0.72.117.g6bd7cc73-35_i386.deb"
fi

wget -c $DOWNLOAD
