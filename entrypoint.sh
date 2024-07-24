#!/bin/sh -l

cd /github/workspace/

npm ci --ignore-scripts
npx homey app translate --api-key $1