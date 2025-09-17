#!/usr/bin/env bash

git clean -df
git clean -df -x -e '**/obj/'
git clean -df -x -e '**/objs/'
git clean -df -x -e '**/obj64/'
git clean -df -x -e '**/obj32/'
git clean -df -x -e '**/Release64/'
git clean -df -x -e '**/Release/'
git clean -df -x -e '**/Debug64/'
git clean -df -x -e '**/Debug/'

git submodule foreach 'git clean -df'
git submodule foreach 'git restore .'
git submodule foreach 'rm -rf * .[a-z]*'
