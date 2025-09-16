#!/usr/bin/bash

cd libXfont2
cp ../libXfont2.in/{makefile,config.h} .
git apply ../libXfont2.in/libXfont2.patch
