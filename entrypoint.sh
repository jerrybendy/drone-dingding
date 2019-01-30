#!/bin/sh

set -e

curl -X POST \
  "https://oapi.dingtalk.com/robot/send?access_token=${PLUGIN_TOKEN}" \
  -H 'Content-Type: application/json' \
  -H 'cache-control: no-cache' \
  -d "{\"msgtype\": \"text\",\"text\": {\"content\": \"${PLUGIN_TEXT}\"}}"
