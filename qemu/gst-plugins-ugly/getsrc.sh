#!/bin/bash
#
# get source for gst-plugins-ugly - https://gstreamer.freedesktop.org/
#

VERSION="1.22.0"
DOWNLOAD="https://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-$VERSION.tar.xz"

wget -4 -c $DOWNLOAD
