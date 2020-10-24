#!/bin/bash

IMAGE=acockburn/appdaemon
NAME=appdaemon4

COMMAND=`cat appdaemon.docker`

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if ! docker pull $IMAGE | tee /dev/stderr | grep -q "Image is up to date"
then
  echo -e "${GREEN}Upgrading $NAME for $IMAGE ${NC}"
  docker stop $NAME
  docker rm -f $NAME
else
  echo -e "${RED}$NAME image up to date${NC}"
fi

if ! docker ps --filter=name="$NAME" --filter=status="running" | grep $NAME
then
  echo "running $NAME"
  $COMMAND

fi
