#!/bin/bash
#
# get source for ollama - https://github.com/ollama/ollama
#

VERSION=0.10.1
DOWNLOAD="https://github.com/ollama/ollama/releases/download/v${VERSION}/ollama-linux-amd64.tgz"

wget -c $DOWNLOAD
