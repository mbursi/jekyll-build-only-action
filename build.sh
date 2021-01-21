#!/bin/sh -l
set -o verbose
set -o errexit

echo "Starting build"
pwd
which jekyll
jekyll build --trace
echo "Build completed"