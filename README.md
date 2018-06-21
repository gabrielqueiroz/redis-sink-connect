# Redis Sink Connect

This project is a PoC (Proof of Concept). The main idea is insert data into Redis from a Kafka topic.

# Setting up this project

This PoC uses docker-compose to set up all necessary environment to proof this concept.

You can just build and run everything running `docker-compose up` command.

What does the docker compose will start?
- Redis
- Kafka
- Zookeeper
- Redis Sink Connector
