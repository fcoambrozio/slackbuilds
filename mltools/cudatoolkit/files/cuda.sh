#!/bin/sh

export CUDA_PATH=/opt/cuda
export PATH=${PATH}:/opt/cuda/bin:/opt/cuda/nsight_compute:/opt/cuda/nsight_systems/bin
export LD_LIBRARY_PATH=/opt/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export NVCC_CCBIN=/usr/bin/g++-13
