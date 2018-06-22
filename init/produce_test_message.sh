#!/usr/bin/env bash

SCRIPT_PATH=$(dirname $0)

TOPIC="redis-sink"
MESSAGE='{"key": "gabriel", "name": "gabriel", "age": 24 }'
SCHEMA='{"type":"record","name":"myrecord","fields":[{"name":"key","type":"string"},{"name":"name","type":"string"},{"name":"age","type":"long"}]}'

$SCRIPT_PATH/../kafka/topics/produce-avro.sh "$TOPIC" "$MESSAGE" "$SCHEMA"

exit 0
