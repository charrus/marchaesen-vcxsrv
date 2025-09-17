#!/usr/bin/bash

cd libXaw
cp -r ../libXaw.in/files/* .
git apply ../libXaw.in/libXaw.patch
