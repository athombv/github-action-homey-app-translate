#!/bin/sh -l

set -e

cd /github/workspace/

npm ci --ignore-scripts
npx -y homey app translate --api-key $1
