#!/bin/bash
#
# get source for gst-plugins-bad
#

VERSION="1.26.5"
DOWNLOAD="https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-$VERSION.tar.xz"

wget -c $DOWNLOAD
