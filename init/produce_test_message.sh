#!/usr/bin/env bash

SCRIPT_PATH=$(dirname $0)

TOPIC="redis-sink"
JSON='test:gabriel;{"key": "test:gabriel", "_class": "whatever", "name": "gabriel", "age": 24 }'
SCHEMA='{"type":"record","name":"myrecord","fields":[{"name":"key","type":"string"},{"name":"name","type":"string"},{"age":"age","type":"long"}]}'

$SCRIPT_PATH/../kafka/topics/produce-avro.sh "$TOPIC" "$JSON" "$SCHEMA"

exit 0
