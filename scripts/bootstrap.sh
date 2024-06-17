#!/usr/bin/env bash
set -eo pipefail

cd /srv/root

if [ -z "$APP_ENV" ]; then
  echo "Please set APP_ENV"
  exit 1
fi

if [ -z "$APP_COMPONENT" ]; then
  echo "Please set APP_COMPONENT"
  exit 1
fi

# run the service
if [ $APP_COMPONENT == "api" ]; then
  exec /scripts/run-api.sh
else
  echo "Unknown APP_COMPONENT: $APP_COMPONENT"
  exit 1
fi
