#!/bin/bash
#
# get source for acpica - http://www.acpica.org
#

VERSION=20250807
DOWNLOAD="https://github.com/acpica/acpica/releases/download/${VERSION}/acpica-unix-${VERSION}.tar.gz"

wget -c $DOWNLOAD
