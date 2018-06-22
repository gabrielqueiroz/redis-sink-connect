#!/usr/bin/env bash

echo "TOPIC   : $1"
echo "MESSAGE : $2"
echo "SCHEMA  : $3"

docker exec redis-sink-connect_schema_registry_1 bash -c "echo '$2' | /usr/bin/kafka-avro-console-producer --broker-list kafka:9092 --topic $1 --property value.schema='$3' --property schema.registry.url=http://schema_registry:8081"

exit 0
