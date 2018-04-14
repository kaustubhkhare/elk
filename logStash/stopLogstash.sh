#!/bin/sh

process=$( ps -ef | grep logstash | grep jruby | grep java)

echo "Killing Process: $process"

pid=$(echo "$process" | awk '{print $2}')

kill -9 $pid
