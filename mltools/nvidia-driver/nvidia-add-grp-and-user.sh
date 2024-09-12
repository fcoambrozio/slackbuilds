#!/bin/bash

groupadd -r -g 365 nvidia
useradd -r -u 365 -g 365 -d /dev/null -s /bin/false nvidia
