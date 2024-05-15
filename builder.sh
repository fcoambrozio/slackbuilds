#!/bin/bash
#

if [ -z "$1" ]; then
    echo "Usage: $(basename $0) BASEDIR"
    exit 1
fi

BASEDIR="/srv/slackbuilds"

if grep -aq container=lxc /proc/1/environ 2> /dev/null ; then
  BASEDIR="/build/slackbuilds"
fi

WRKDIR=$BASEDIR/$1

cd $WRKDIR 2>/dev/null || {
    echo "Could not access $WRKDIR."
    exit 1
}

[ -f BUILD_ORDER.TXT ] || {
    echo "BUILD_ORDER.TXT file not found"
    exit 1
}

IFS=$'\n'
BUILD_STATUS=0
REINSTALL=${REINSTALL:-"--install-new"}

mods=$(cat ./BUILD_ORDER.TXT)

for mod in $mods; do
    if [ "${mod:0:1}" == "#" ]; then
        continue;
    fi

    cd $mod || {
        BUILD_STATUS=1
        break;
    }
    
    ./${mod}.SlackBuild 

    if [ "$?" != "0" ]; then
        BUILD_STATUS=1
        break;
    fi

    . /var/tmp/build/${mod}-build.env || {
        BUILD_STATUS=1
        break;
    }

    /sbin/upgradepkg $REINSTALL $PKGFINAL

    if [ "$?" != "0" ]; then
        BUILD_STATUS=1
        break;
    fi

    cd -
done

if [ $BUILD_STATUS -eq 1 ]; then
    echo "Build failed $mod"
    exit 1
fi
