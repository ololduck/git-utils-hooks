#!/bin/bash
set -e # exit on error
curl https://raw.githubusercontent.com/craicoverflow/sailr/master/sailr.sh > .git/sailr.sh
chmod +x .git/sailr.sh
if [ -f sailr.json ]; then
	curl https://raw.githubusercontent.com/craicoverflow/sailr/master/sailr.json > sailr.json
fi
git stash
git add sailr.json
git commit -m "build: Added enforcing of conventional commit spec"
git stash pop