#!/bin/sh

process=$(ps -ef | grep elastic | grep java)

echo "Killing: $process"

pid=$(echo "$process" | awk '{print $2}')
echo "pid: $pid"
kill -9 $pid
