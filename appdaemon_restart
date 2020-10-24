#!/bin/bash

COMMAND=`cat appdaemon.docker`

docker stop appdaemon4
docker rm appdaemon4
$COMMAND
echo "$COMMAND"
