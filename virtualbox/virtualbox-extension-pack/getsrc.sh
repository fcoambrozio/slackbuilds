#!/bin/bash
#
# get source for virtualbox-extension-pack
#

VERSION="6.1.40"
DOWNLOAD="http://download.virtualbox.org/virtualbox/$VERSION/Oracle_VM_VirtualBox_Extension_Pack-$VERSION.vbox-extpack"

wget -c $DOWNLOAD