#!/bin/sh
files=$(ls apps/)
for file in $files
do
  sed -i 's/restart: always/restart: unless-stopped/g' apps/$file/docker-compose.yml
done
