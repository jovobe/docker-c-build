#!/bin/bash

eval $(docker-machine env default)

name=$(docker-compose ps | grep "dockercbuild" | awk '{print $1}')

docker exec -it $name bash -c 'cd /code; exec "${SHELL:-sh}"'
