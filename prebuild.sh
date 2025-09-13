#!/bin/sh

git submodule init
git submodule update
cp -r fontconfig.in/* fontconfig
cp -r xorg-server/xkeyboard-config.in/* xorg-server/xkeyboard-config
cp -r libXft.in/* libXft
