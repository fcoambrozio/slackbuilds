#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Only root allowed here."
    exit 1
fi

[ -f /root/.sbuildrc ] && source /root/.sbuildrc || exit 1

PASS1="\
    powerline-status \
    google-go-lang \
    postgresql"

for pkg in $PASS1
do
    cd $pkg || {
        echo "Error building $pkg"
        exit 1
    }

    echo "Building $pkg..."
    sleep 3

    ./$pkg.SlackBuild

    if [ $? -eq 0 ]; then
        /sbin/upgradepkg --install-new $OUTPUT/$pkg-*.txz
    else
        echo "Error building $pkg"
        exit 1
    fi

    cd -

    source /etc/profile
done


PASS2="docker qemu"

for mod in $PASS2
do
    cd $mod || {
        echo "Error while building module $mod"
        exit 1
    }

    ./build.sh

    if [ $? -ne 0 ]; then
        echo "Error while building module $mod"
        exit 1
    fi

    source /etc/profile
done

PASS3=" \
    nginx \
    noto-emoji \
    spotify \
    vscode-bin"

for pkg in $PASS3
do
    cd $pkg || {
        echo "Error building $pkg"
        exit 1
    }

    echo "Building $pkg..."
    sleep 3

    ./$pkg.SlackBuild

    if [ $? -eq 0 ]; then
        /sbin/upgradepkg --install-new $OUTPUT/$pkg-*.txz
    else
        echo "Error building $pkg"
        exit 1
    fi

    cd -

    source /etc/profile
done

cd virtualbox || {
    echo "Error while building module virtualbox"
    exit 1
}

./build.sh

if [ $? -ne 0 ]; then
    echo "Error while building module $mod"
    exit 1
fi

