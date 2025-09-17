#!/usr/bin/bash

cd libXau
cp -r ../libXau.in/files/* .
git apply ../libXau.in/libXau.patch
