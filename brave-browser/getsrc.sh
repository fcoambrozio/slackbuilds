#!/bin/bash
#
# get source for brave-browser
#

VERSION="1.74.48"
DOWNLOAD="https://github.com/brave/brave-browser/releases/download/v${VERSION}/brave-browser_${VERSION}_amd64.deb"

wget -c $DOWNLOAD
