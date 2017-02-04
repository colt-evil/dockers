#!/bin/bash
name=$1
if [ -z "$1" ]; then
    echo "usage $0 [container-name]"
    echo "example: $0 douyu-php"
    exit
fi
container_id=`docker ps -aql -f "name=$name"`
if [ ! -z "$container_id" ]; then
    docker start $container_id
else
    echo "container not exists"
fi
