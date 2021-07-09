#!/bin/sh
apt update
TOKEN="f00e725125516fc3211278009b8cac16973eddf53bcf270820" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
timeout 288m ~/.buildkite-agent/bin/buildkite-agent start
echo "yohoho"
