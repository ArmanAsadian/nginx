#!/bin/sh
set -e

if [ -d "/default-data" ]; then
  # copy without overwriting existing files
  cp -anv /default-data/* /data/
fi

exit 0
