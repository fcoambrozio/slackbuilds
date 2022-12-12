#!/bin/bash
#
# get source for glusterfs
#

MJRVER="10"
VERSION="$MJRVER.3"
DOWNLOAD="https://download.gluster.org/pub/gluster/glusterfs/$MJRVER/$VERSION/glusterfs-$VERSION.tar.gz"

wget -c $DOWNLOAD
