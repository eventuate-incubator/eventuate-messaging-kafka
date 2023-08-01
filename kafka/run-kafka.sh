#! /bin/bash -e

set -e

EFFECTIVE_KAFKA_CONFIG_DIR=./config

export KAFKA_LOG_DIRS=${KAFKA_LOG_DIRS:-/tmp/kafka-logs}

envsubst < /usr/local/kafka-config/server.properties > $EFFECTIVE_KAFKA_CONFIG_DIR/server.properties

exec bin/kafka-server-start.sh $EFFECTIVE_KAFKA_CONFIG_DIR/server.properties
