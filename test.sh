#!/bin/sh
files=$(ls apps/library)
for file in $files
do
  sed -i 's/restart: always/restart: unless-stopped/g' ./$file/docker-compose.yml
done
