#!/usr/bin/bash

cd libX11
cp -r ../libX11.in/* .
git apply ../libX11.in/libX11.patch
