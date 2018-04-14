#!/bin/sh

echo "Stopping filebeat"

#./filebeat -e -c filebeat.yml -d "publish"

process=$(ps -ef | grep filebeat | grep publish | grep yml)

echo "Killing Process: $process"

pid=$(echo "$process" | awk '{print $2}')

kill -9 $pid
