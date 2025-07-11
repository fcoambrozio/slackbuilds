#!/bin/bash
#
# get source for python-typing-extensions - https://pypi.org/project/typing-extensions/
#

VERSION="4.14.1"
DOWNLOAD="https://files.pythonhosted.org/packages/source/t/typing_extensions/typing_extensions-${VERSION}.tar.gz"

wget -c $DOWNLOAD
