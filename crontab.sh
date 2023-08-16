#!/bin/sh

echo "${MULTIPLE_PUSH_TESTS_BASE64}" | base64 -d | xargs -I '{}' echo "{}"
echo "${MULTIPLE_PUSH_TESTS_BASE64}" | base64 -d | xargs -I '{}' -P 5 curl --silent "{}"
