#!/bin/bash
#
# get source for xdg-dbus-proxy
#

VERSION="0.1.6"
DOWNLOAD="https://github.com/flatpak/xdg-dbus-proxy/releases/download/${VERSION}/xdg-dbus-proxy-${VERSION}.tar.xz"

wget -c $DOWNLOAD
