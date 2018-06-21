#!/usr/bin/env bash

docker exec redis-sink-connect_kafka_1 bin/kafka-topics.sh --zookeeper zookeeper --list

exit 0
