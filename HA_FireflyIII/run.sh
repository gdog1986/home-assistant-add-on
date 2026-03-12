#!/bin/bash

# Ensure environment variables are set
if [ -z "$CRON_TOKEN" ]; then
  CRON_TOKEN=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 32)
  echo "Generated CRON_TOKEN: $CRON_TOKEN"
fi

# Replace the cron token in the .env file
sed -i "s/STATIC_CRON_TOKEN=.*/STATIC_CRON_TOKEN=$CRON_TOKEN/" /fireflyiii/.env

# Start the services
docker-compose -f /fireflyiii/docker-compose.yaml up
