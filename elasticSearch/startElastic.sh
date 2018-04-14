#!/bin/sh

./bin/elasticsearch > elastic.log 2>&1 &

process=$(ps -ef | grep elastic | grep java)

echo "$process"
