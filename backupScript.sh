#!/bin/sh
# This is a comment!
virtualHosts=( $(ls -d /var/www/*.domain.com | xargs -n 1 basename))
for i in "${virtualHosts[@]}"
do
timeStamp=$(date +%Y-%m-%d-%H-%M)
zip -r /var/www/backups/$i-$timeStamp.zip /var/www/$i
done
