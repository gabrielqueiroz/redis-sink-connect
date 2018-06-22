# Redis Sink Connect

This project is a PoC (Proof of Concept). The main idea is insert data into Redis from a Kafka topic, using the [Landoop Redis Sink Connect](https://github.com/Landoop/stream-reactor/tree/master/kafka-connect-redis).

## Setting up this project

This PoC uses docker-compose to set up all necessary environment to proof this concept.

You can just build and run everything running `docker-compose up` command.

What does the docker compose will start?
- Redis
- Kafka
- Zookeeper
- Redis Sink Connector

## How do I use this PoC?

To run this PoC, you can just run the script `./poc.sh`. It will do all the job, and [produce a test message](https://github.com/gabrielqueiroz/redis-sink-connect/blob/master/init/produce_test_message.sh) to a specific [Kafka topic](https://github.com/gabrielqueiroz/redis-sink-connect/blob/master/init/create_topics.sh). You can them access Redis, using redis-cli for example, to check the keys generate from the topic.
