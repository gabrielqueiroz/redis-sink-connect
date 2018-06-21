#!/usr/bin/env bash

docker exec redis-sink-connect_kafka_1 bin/kafka-topics.sh --zookeeper zookeeper --create --replication-factor 1 --partitions 10 --topic $1

exit 0
