#!/bin/sh

setenv CUDA_PATH /opt/cuda
setenv PATH ${PATH}:/opt/cuda/bin:/opt/cuda/nsight_compute:/opt/cuda/nsight_systems/bin
setenv LD_LIBRARY_PATH /opt/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
setenv NVCC_CCBIN /usr/bin/g++-13
