#!/bin/bash

if [ -n "$1" ]; then
    PKGS="$*"
else
    PKGS="$(cat ./BUILD_ORDER.TXT)"
fi

for pkg in $PKGS
do
    cd $pkg || continue
    echo "Building $pkg..."
    sleep 3

    ./$pkg.SlackBuild

    if [ $? -eq 0 ]; then
        /sbin/upgradepkg --install-new /var/tmp/packages/$pkg-*.txz
    fi
    cd -
done
