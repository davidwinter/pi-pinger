#!/bin/sh

date
echo "Running heartbeat pings..."
echo $PUSH_TESTS
echo $PUSH_TESTS | xargs -n 1 -P 5 -I '{}' curl --silent "{}"
