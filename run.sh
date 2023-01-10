#!/bin/sh
docker run --rm -ti --cpus="2" -v "$PWD/src":/home/ubuntu/src offreitas/masters-container
