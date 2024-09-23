#!/bin/bash

export CUDA_PATH=/opt/cuda
export NVCC_CCBIN=/usr/bin/g++-13
export PATH=${PATH}:/opt/cuda/bin:/opt/cuda/nsight_compute:/opt/cuda/nsight_systems/bin

if ! echo $LD_LIBRARY_PATH | grep -q "/opt/cuda/lib64" ; then
    export LD_LIBRARY_PATH=/opt/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
fi
