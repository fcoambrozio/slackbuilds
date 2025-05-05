#!/bin/bash

if ! echo $PATH | grep -q "/opt/ollama/bin" ; then
    export PATH=${PATH}:/opt/ollama/bin
fi

