# Redis Sink Connect

This project is a PoC (Proof of Concept). The main idea is insert data into Redis from a Kafka topic, using the [Landoop Redis Sink Connect](https://github.com/Landoop/stream-reactor/tree/master/kafka-connect-redis).

This project uses Docker, and create a Docker image configured with [kafka-connect-redis-1.0.0.jar](https://lenses.stream/connectors/sink/redis.html). You can check the [Dockerfile here](https://github.com/gabrielqueiroz/redis-sink-connect/blob/master/redis-connect/Dockerfile).

## Setting up this project

This PoC uses docker-compose to set up all necessary environment to proof this concept.

You can just build and run everything running `docker-compose up` command.

What does the docker-compose will start?
- Redis
- Zookeeper
- Kafka
- Schema-registry
- Kafka Connect

## How do I use this PoC?

To run this PoC, you can just run the script [./poc.sh](https://github.com/gabrielqueiroz/redis-sink-connect/blob/master/poc.sh).  What does the `poc.sh` do?
- Build and up all docker services from docker-compose.
- [Create topic](https://github.com/gabrielqueiroz/redis-sink-connect/blob/master/init/create_topics.sh) `redis-sink`.
- [Create Redis sink connect](https://github.com/gabrielqueiroz/redis-sink-connect/blob/master/init/create_sink_connect.sh) `connector_redis_sink`.
- [Produce a test message](https://github.com/gabrielqueiroz/redis-sink-connect/blob/master/init/produce_test_message.sh) to a specific [Kafka topic](https://github.com/gabrielqueiroz/redis-sink-connect/blob/master/init/create_topics.sh).


You can them access Redis, using `redis-cli` for example, to check the keys generate from the topic:

- `redis-cli` -> `get test:gabriel`
