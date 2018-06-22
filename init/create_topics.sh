#!/usr/bin/env bash

SCRIPT_PATH=$(dirname $0)

echo '(-) Creating Topics'

$SCRIPT_PATH/../kafka/topics/create.sh redis-sink

echo '(✔) Creating Topics'
