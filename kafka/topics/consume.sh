#!/usr/bin/env bash

docker exec redis-sink-connect_kafka_1 bin/kafka-console-consumer.sh  --bootstrap-server kafka:9092 --property print.key=true --property 'key.separator=;' --topic $1 $2

exit 0
