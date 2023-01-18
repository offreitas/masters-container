#!/bin/sh
docker run \
    --rm \
    --cpus="2" \
    -v "$PWD/src":/home/ubuntu/src \
    --platform linux/riscv64 \
    -ti offreitas/masters-container
