#!/bin/sh
set -eu

if [ -d "/default-data" ]; then
  # copy without overwriting existing files
  cp -anv /default-data/* $NGINX_DOCUMENT_ROOT/
fi

exit 0
