#!/bin/bash
set -e # exit on error
curl -O .git/sailr.sh \
	https://raw.githubusercontent.com/craicoverflow/sailr/master/sailr.sh
chmod +x .git/sailr.sh
if [ -f sailr.json ]; then
	curl -O sailr.sh \
		https://raw.githubusercontent.com/craicoverflow/sailr/master/sailr.json
fi
git stash
git add sailr.json
git commit -m "build: Added enforcing of conventional commit spec"
git stash pop