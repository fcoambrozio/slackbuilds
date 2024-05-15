#!/bin/bash
#
# get source for virtualbox-extension-pack
#

VERSION="7.0.18"
DOWNLOAD="http://download.virtualbox.org/virtualbox/$VERSION/Oracle_VM_VirtualBox_Extension_Pack-$VERSION.vbox-extpack"

wget -c $DOWNLOAD
