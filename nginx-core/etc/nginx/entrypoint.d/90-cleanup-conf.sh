#!/bin/sh
set -eu

ME=$(basename "$0")

# Remove some configs base on envs
if [ -z ${NGINX_FORCE_DOMAIN:-} ]; then
  echo "$ME: Remove force domain location config"
  rm -fv /etc/nginx/conf.d/location.d/40-force-domain.conf
fi

exit 0
