#!/bin/sh

#
# This script will be placed in /config/init/ and run when container starts.
# It creates (if they're not exist yet) necessary directories to run memcached
#

set -e

mkdir -p /data/run/redis/
mkdir -p /data/log/redis/

chmod 711 /data/run/redis
chmod 711 /data/log/redis

#chown -R www:www /data/log/redis
#chown -R www:www /data/run/redis

umask 0000
eval "$@"
