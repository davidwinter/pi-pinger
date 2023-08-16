#!/bin/sh

date
echo "Running heartbeat pings..."
echo "${PUSH_TESTS}" | xargs --delimiter=' ' -I '{}' echo "{}"
echo "${PUSH_TESTS}" | xargs --delimiter=' ' -I '{}' -P 5 curl --silent "{}"
