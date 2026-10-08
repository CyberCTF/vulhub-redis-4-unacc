#!/bin/sh
# INFO answers without AUTH and reports version 4.0.14.
set -e
curl -sS --max-time 5 dict://redis:6379/info | grep -q 'redis_version:4.0.14'
