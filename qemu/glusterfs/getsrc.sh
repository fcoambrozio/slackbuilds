#!/bin/bash
#
# get source for glusterfs
#

MJRVER="11"
VERSION="$MJRVER.0"
DOWNLOAD="https://download.gluster.org/pub/gluster/glusterfs/$MJRVER/$VERSION/glusterfs-$VERSION.tar.gz"

wget -c $DOWNLOAD
