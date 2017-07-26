#!/bin/bash
name=$1
if [ -z "$1" ]; then
    echo "usage $0 [container-name] [command]"
    echo "example: $0 php /bin/bash"
    exit
fi
container_id=`docker ps -aql -f "name=$name"`
if [ ! -z "$container_id" ]; then
    echo "container is running."
    docker exec -ti $container_id $2
    echo "container stopped."
else
    echo "container is not running!"
fi
