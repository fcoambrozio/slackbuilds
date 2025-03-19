#!/bin/bash

G_ID=$(grep xrdp /etc/group | cut -f3 -d:)
U_ID=$(grep xrdp /etc/passwd | cut -f3 -d:)

if [ -z "$G_ID" ]; then
    G_ID="401"

    groupadd -r -g $G_ID xrdp
fi

if [ -z "$U_ID" ]; then
    U_ID="401"

    useradd -r -u $U_ID -g $G_ID -d /dev/null -s /bin/false xrdp
fi

chgrp xrdp /etc/xrdp/rsakeys.ini
chgrp xrdp /etc/xrdp/cert.pem
chgrp xrdp /etc/xrdp/key.pem

chmod g+r /etc/xrdp/rsakeys.ini
chmod g+r /etc/xrdp/cert.pem
chmod g+r /etc/xrdp/key.pem

