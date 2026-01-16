#!/bin/bash
#
# get source for ollama - https://github.com/ollama/ollama
#

VERSION=0.14.1
DOWNLOAD="https://github.com/ollama/ollama/releases/download/v${VERSION}/ollama-linux-amd64.tar.zst"

wget -c $DOWNLOAD
