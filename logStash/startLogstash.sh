#!/bin/sh

echo "Starting logstash"

./bin/logstash -f logstash-pipeline.conf --config.reload.automatic > logstash.log 2>&1 &

process=$( ps -ef | grep logstash | grep jruby | grep java)

echo "Process started: $process"
