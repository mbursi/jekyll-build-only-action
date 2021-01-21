#!/bin/sh -l
set -o verbose
set -o errexit
chmod -R a+w /github/workspace

echo "Starting build"
jekyll build --trace
echo "Build completed"
