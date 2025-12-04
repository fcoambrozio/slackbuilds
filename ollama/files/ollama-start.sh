#!/bin/bash

export PATH="/opt/ollama/bin:${PATH}"

if [ -f /etc/default/ollama ]; then
  set -a
  . /etc/default/ollama
  set +a
fi

ollama serve &>>/var/log/ollama.log
