#!/usr/bin/bash

rsync -rptC xserver/ xorg-server/
cd xorg-server
cp -r ../xserver.in/files/* .
git apply ../xserver.in/xserver.patch
