#!/bin/sh

set -e

cd /home/app/code

bundle check || bundle install

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

bundle exec rails s -b 0.0.0.0 -p 3000
