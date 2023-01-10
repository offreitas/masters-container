#!/bin/sh
cd docker
if [ $# -eq 0 ] ; then
    docker build --no-cache -t offreitas/masters-container . 
elif [ $1 == "-c" ] ; then
    docker build -t offreitas/masters-container . 
elif [ $1 == "-h" ] ; then
    echo "-c\tBuild with cache"
fi
cd ..
