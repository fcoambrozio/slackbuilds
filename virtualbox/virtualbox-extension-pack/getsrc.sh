#!/bin/bash
#
# get source for virtualbox-extension-pack
#

VERSION="7.1.6"
DOWNLOAD="http://download.virtualbox.org/virtualbox/$VERSION/Oracle_VirtualBox_Extension_Pack-$VERSION.vbox-extpack"

wget -c $DOWNLOAD
