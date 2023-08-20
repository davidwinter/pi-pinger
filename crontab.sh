#!/bin/sh

echo "${PING_URLS}" | xargs -I '{}' echo "{}"
echo "${PING_URLS}" | xargs -I '{}' -P 5 curl --silent "{}"
