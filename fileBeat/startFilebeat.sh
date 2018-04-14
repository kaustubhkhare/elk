#!/bin/bash

if [[ $1 = *"-c"* ]];
then
	rm data/registry
fi

echo "Starting filebeat"

./filebeat -e -c filebeat.yml -d "publish" > filebeat.log 2>&1 &

process=$(ps -ef | grep filebeat | grep publish | grep yml)

echo "Started: $process"
