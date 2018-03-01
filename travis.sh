#!/usr/bin/env bash

# Halt script on error
set -e

GREENC='\033[0;32m'
NOC='\033[0m'

echo "Building site..."
bundle exec jekyll build
echo -e "${GREENC}done!${NOC}"

echo "Testing site..."
bundle exec htmlproofer ./_site --only-4xx
echo -e "${GREENC}done!${NOC}"