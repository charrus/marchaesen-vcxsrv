#!/usr/bin/bash

cd libfontenc
cp -r ../libfontenc.in/files/* .
git apply ../libfontenc.in/libfontenc.patch
