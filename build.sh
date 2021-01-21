#!/bin/sh -l
set -o verbose
set -o errexit

echo "Starting build"
jekyll build --trace
echo "Build completed"