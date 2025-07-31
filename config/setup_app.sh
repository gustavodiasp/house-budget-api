#!/bin/sh

set -e

#yarn install

bundle check || bundle install --jobs --retry 5

#If we try to run and containers/process got stuck remove all stuck process
if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

#If evn is NOT development should run migrations before hand (Prod or Staging)
if [ "$RAILS_ENV" != development ]; then
  echo ' --> Running migrations '
  rails db:migrate
  echo ' --> End of migrations '
else
  echo ' --> Skip migrations for Dev env '
fi

exec "$@" # command from docker-compose web