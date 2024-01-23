#!/bin/sh
# vim:sw=2:ts=2:sts=2:et

set -e

ME=$(basename $0)

test -z "$NGINX_CONFIG_JS_PATH" && exit 0
test ! -f "$NGINX_CONFIG_JS_PATH" && exit 0

definedEnvs=$(printf '${%s} ' $(env | cut -d= -f1))
if [ ! -w "$NGINX_CONFIG_JS_PATH" ]; then
  echo >&3 "$ME: ERROR: $NGINX_CONFIG_JS_PATH exists, but is not writable"
  return 0
fi
echo >&3 "$ME: Running envsubst on $NGINX_CONFIG_JS_PATH"
envsubst "$definedEnvs" <"$NGINX_CONFIG_JS_PATH" >"${NGINX_CONFIG_JS_PATH}.tmp"
mv -f "${NGINX_CONFIG_JS_PATH}.tmp" "$NGINX_CONFIG_JS_PATH"

exit 0
