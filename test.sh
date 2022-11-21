#!/bin/sh
files=$(ls apps/)
for file in $files
do
  if [-e apps/$file/docker-compose.yml];then
    sed -i 's/restart: always/restart: unless-stopped/g' apps/$file/docker-compose.yml
  else 
    echo 'apps/$file/docker-compose.yml dosen't exist'
  fi
done
