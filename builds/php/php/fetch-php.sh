#!/bin/sh

if [ -z $VERSION ]; then
    echo 'Error: missing variable $VERSION'
    exit 1
fi

lftpget http://us.php.net/distributions/php-$VERSION.tar.xz
