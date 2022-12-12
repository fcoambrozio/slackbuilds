#!/bin/bash
#
# get source for liburcu - http://liburcu.org/
#

VERSION="0.13.2"
DOWNLOAD="https://www.lttng.org/files/urcu/userspace-rcu-$VERSION.tar.bz2"

wget -c --prefer-family=IPv4 $DOWNLOAD
