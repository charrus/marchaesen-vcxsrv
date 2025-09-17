#!/bin/sh

git submodule init
git submodule update
cp -r fontconfig.in/* fontconfig
cp -r xorg-server/xkeyboard-config.in/* xorg-server/xkeyboard-config
cp -r libXft.in/* libXft
cp -r libxkbfile.in/* libxkbfile
rm -rf expat
cp -r libexpat/expat expat
cp -r expat.in/* expat
./xkbcomp.in/prebuild.sh
./libXfont2.in/prebuild.sh
./libX11.in/prebuild.sh
./libXau.in/prebuild.sh
./libXaw.in/prebuild.sh
