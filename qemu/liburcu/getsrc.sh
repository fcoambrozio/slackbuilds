#!/bin/bash
#
# get source for liburcu - http://liburcu.org/
#

VERSION="0.14.0"
DOWNLOAD="https://www.lttng.org/files/urcu/userspace-rcu-$VERSION.tar.bz2"

wget -4 -c $DOWNLOAD
