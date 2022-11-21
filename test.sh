#!/bin/sh
files=$(ls apps/)
for file in $files
do
  FILE = apps/$file/docker-compose.yml
  if [ -f "$FILE" ];then
    sed -i 's/restart: always/restart: unless-stopped/g' $FILE
  else 
    echo "$FILE dosen't exist"
  fi
done
