#!/usr/bin/env bash

git clean -df
find . -type d -name obj -exec rm -rf {} \; 2>/dev/null
find . -type d -name objs -exec rm -rf {} \; 2>/dev/null
find . -type d -name obj64 -exec rm -rf {} \; 2>/dev/null
find . -type d -name obj32 -exec rm -rf {} \; 2>/dev/null
find . -type d -name Release64 -exec rm -rf {} \; 2>/dev/null
find . -type d -name Release -exec rm -rf {} \; 2>/dev/null
find . -type d -name Debug64 -exec rm -rf {} \; 2>/dev/null
find . -type d -name Debug -exec rm -rf {} \; 2>/dev/null
