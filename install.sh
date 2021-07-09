#!/bin/sh
apt update
COUNTER=20
until [ $COUNTER -lt 10]; do
TOKEN="f00e725125516fc3211278009b8cac16973eddf53bcf270820" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
timeout 288m ~/.buildkite-agent/bin/buildkite-agent start
echo "yohoho" 

echo COUNTER $COUNTER
let COUNTER -=1
done