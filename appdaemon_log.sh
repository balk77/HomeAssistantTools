#!/bin/bash

docker logs -f --tail 500 appdaemon4 | ccze -A

