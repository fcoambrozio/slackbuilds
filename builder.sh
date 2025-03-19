#!/bin/bash

[ -f ./BUILD_ORDER.txt ] || exit 1
[ -f ~/.sbuildrc ] || exit 1

. ~/.sbuildrc

LOG=$TMP/build-all-$(date +%Y%m%d_%H%M%S).log
IFS=$'\n'

for line in $(cat ./BUILD_ORDER.txt)
do
    builddir=$(echo $line | xargs)

    if [ "${builddir:0:1}" = "#" ]; then
        continue
    fi

    pkgnam=$(echo $builddir | rev | cut -f1 -d"/" | rev)

    cd $builddir || {
        echo "Could not cd into $builddir" | tee -a $LOG
        exit 1
    }

    echo "Building $pkgnam..." | tee -a $LOG
    pkg=$(PRINT_PACKAGE_NAME="yes" ./${pkgnam}.SlackBuild)

    ./${pkgnam}.SlackBuild | tee -a $LOG

    if [ $? -ne  0 ]; then
        echo "$builddir failed to build." | tee -a $LOG
        exit 1
    fi

    /sbin/upgradepkg --install-new ${OUTPUT}/${pkg} | tee -a $LOG

    echo "" >> $LOG

    . /etc/profile

    cd -
done
