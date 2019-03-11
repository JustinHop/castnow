#!/bin/sh

IP=$(hostname -I | awk '{ print $1 }')
DIR="$(pwd)"

docker run --rm -ti -v "$DIR":"$DIR" -w "$DIR" --net=host jhoppensteadt/castnow:latest --myip $IP "$@"
