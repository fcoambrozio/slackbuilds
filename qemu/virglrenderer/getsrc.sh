#!/bin/bash
#
# get source for virglrenderer - https://docs.mesa3d.org/drivers/virgl
#

VERSION="1.1.1"
DOWNLOAD="https://gitlab.freedesktop.org/virgl/virglrenderer/-/archive/$VERSION/virglrenderer-$VERSION.tar.bz2"

wget -c $DOWNLOAD
