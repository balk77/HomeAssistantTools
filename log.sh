#!/bin/bash
# uses `ccze` for colored output. Remove `|ccze -A` If it does not work
tail -f homeassistant/home-assistant.log | ccze -A

