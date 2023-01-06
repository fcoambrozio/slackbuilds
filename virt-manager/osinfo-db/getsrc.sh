#!/bin/bash
#
# get source for osinfo-db
#

LINK1="https://releases.pagure.org/libosinfo/osinfo-db-20221130.tar.xz"
LINK2="https://harrier.slackbuilds.org/misc/osinfo-db-slackware-20220214.tar.xz"

wget -c $LINK1 $LINK2
