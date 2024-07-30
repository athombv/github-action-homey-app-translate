#!/bin/sh -l

set -e

npm ci --ignore-scripts

cd /github/workspace/

npx -y homey app translate --api-key $1
