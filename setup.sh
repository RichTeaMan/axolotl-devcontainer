#!/bin/bash

set -e

pip install -r requirements.txt

#export MAX_JOBS=$(($(nproc)/2))
export MAX_JOBS=2
# refer to https://stackoverflow.com/questions/68496906/pytorch-installation-for-different-cuda-architectures/74962874#74962874
export TORCH_CUDA_ARCH_LIST="8.9"

pip install --no-build-isolation axolotl[flash-attn,deepspeed]

