#!/bin/bash
#
# get source for python-typing-extensions - https://pypi.org/project/typing-extensions/
#


VERSION="4.12.2"
DOWNLOAD="https://files.pythonhosted.org/packages/source/t/typing_extensions/typing_extensions-${VERSION}.tar.gz"

wget -c $DOWNLOAD
