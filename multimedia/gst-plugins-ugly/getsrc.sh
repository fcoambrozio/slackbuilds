#!/bin/bash
#
# get source for gst-plugins-ugly - https://gstreamer.freedesktop.org/
#

VERSION="1.22.7"
DOWNLOAD="https://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-$VERSION.tar.xz"

wget -c $DOWNLOAD
