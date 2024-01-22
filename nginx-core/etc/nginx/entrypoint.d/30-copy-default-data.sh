#!/bin/sh
set -eu

ME=$(basename "$0")

if [ -d "/default-data" ]; then
  # copy without overwriting existing files
  echo "$ME: Copy default data from /default-data to $NGINX_DOCUMENT_ROOT"
  cp -anv /default-data/* $NGINX_DOCUMENT_ROOT/
fi

exit 0
