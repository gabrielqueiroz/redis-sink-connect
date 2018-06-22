#!/usr/bin/env bash

containers=$(docker ps -a | egrep redis-sink-connect | awk '{ print $1 }')

if [ "$containers" ]; then
    echo '(-) Stoping and removing all containers (Avoid conflicts)'
    docker stop $containers
    docker rm $containers
    echo '(✔) Stopped and removed all containers'
fi

echo '(-) Starting dependencies'
docker-compose up -d --build kafka zookeeper redis schema_registry connect
echo '(✔) Done'

echo '(-) Waiting for Connector'
./init/wait_for_init.sh 'http://localhost:8083/connectors'
echo "(✔) Connector OK"
sleep 1

echo '(-) Initializing basic configuration'
./init/create_topics.sh
./init/create_sink_connect.sh
echo '(✔) Done'

echo '(-) Producing test message'
./init/produce_test_message.sh
echo '(✔) Done'
