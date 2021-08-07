#!/bin/sh

SMTP_PORT=$1
HTTP_PORT=$2
SENDRIA_VERSION=$3

if [ -z "$SMTP_PORT" ]; then
  echo "Missing smtp port in [smtp-port] input. Received value: $SMTP_PORT="
  echo "Using default port [1025]"
  SMTP_PORT=1025
fi

if [ -z "$HTTP_PORT" ]; then
  echo "Missing web port in [http-port] input. Received value: $HTTP_PORT="
  echo "Using default port [1080]"
  HTTP_PORT=1080
fi

if [ -z "$SENDRIA_VERSION" ]; then
  echo "Missing Sendria version in the [sendira-version] input. Received value: $SENDRIA_VERSION"
  echo "Falling back to Sendira version [v2.2.2.0]"
  SENDRIA_VERSION=v2.2.2.0
fi

echo "Starting Sendira instance"
docker run -p $SMTP_PORT:1025 -p $HTTP_PORT:1080 --detach msztolcman/sendria:$SENDRIA_VERSION
sleep 2