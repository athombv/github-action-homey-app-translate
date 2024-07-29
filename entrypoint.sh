#!/bin/sh -l

set -e

cd /github/workspace/

npx -y homey app translate --api-key $1