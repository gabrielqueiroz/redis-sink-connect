#!/usr/bin/env bash

echo '(-) Creating Redis Connector Sink'

curl -i -X POST \
   -H "Content-Type:application/json" \
   -d \
'{
   "name": "connector_redis_sink",
   "config": {
     "connector.class": "com.datamountaineer.streamreactor.connect.redis.sink.RedisSinkConnector",
     "connect.redis.port": "6379",
     "connect.redis.kcql": "INSERT INTO test: SELECT name, age FROM redis-sink PK key",
     "tasks.max": "1",
     "topics": "redis-sink",
     "connect.redis.host": "redis",
     "name": "connector_redis_sink"
   }
}' \
'http://localhost:8083/connectors'

echo '(✔) Creating Redis Connector Sink'
