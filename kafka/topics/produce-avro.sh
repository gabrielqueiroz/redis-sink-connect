#!/usr/bin/env bash

echo "Topic $1"
echo "Message $2"
docker exec redis-sink-connect_kafka_1 bash -c "echo '$2' | bin/kafka-avro-console-producer.sh --broker-list kafka:9092 --property parse.key=true --value.schema $3 --property 'key.separator=;' --topic $1"

exit 0
