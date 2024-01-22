#!/bin/sh

set -eu

ME=$(basename "$0")

# replace the default robots.txt with a disallow all
if [ ${NGINX_DISALLOW_ROBOTS:-} == 1 ]; then
  echo "$ME: Replace default robots.txt with a disallow all robots.txt"
  cp -afv /default-data/robots.txt $NGINX_DOCUMENT_ROOT/
fi

exit 0
