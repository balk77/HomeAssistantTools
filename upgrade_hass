#!/bin/bash

VERSION=":"
if [ $# -eq 0 ]
  then
    VERSION+="latest"
  else
    VERSION+=$1
fi




IMAGE=homeassistant/home-assistant
NAME=home-assistant
COMMAND=`cat home-assistant.docker`

echo "Requested version$VERSION"


RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if ! docker pull $IMAGE$VERSION | tee /dev/stderr | grep -q "Image is up to date"
then
  echo -e "${GREEN}Upgrading $NAME for $IMAGE ${NC}"
  docker stop $NAME
  docker rm -f $NAME
else
  echo -e "${RED}HASS image up to date${NC}"
fi

if ! docker ps --filter=name="$NAME" --filter=status="running" | grep $NAME
then
  echo "running $NAME"
  $COMMAND$VERSION

fi

