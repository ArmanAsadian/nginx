#!/bin/sh
# vim:sw=2:ts=2:sts=2:et

set -e

ME=$(basename $0)

configJsEnvsubst() {
  local configJsPath="$NGINX_CONFIG_JS_PATH"
  if [ -z "$configJsPath" ] || [ ! -f "$configJsPath" ]
  then
    return 0
  fi

  local definedEnvs=$(printf '${%s} ' $(env | cut -d= -f1))
  if [ ! -w "$configJsPath" ]; then
    echo >&3 "$ME: ERROR: $configJsPath exists, but is not writable"
    return 0
  fi
  echo >&3 "$ME: Running envsubst on $configJsPath"
  envsubst "$definedEnvs" < "$configJsPath" > "${configJsPath}.tmp"
  mv -f "${configJsPath}.tmp" "$configJsPath"
}

configJsEnvsubst

exit 0
