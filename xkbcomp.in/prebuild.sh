#!/usr/bin/bash

cd xkbcomp
cp ../xkbcomp.in/{bison.bat,makefile} .
git apply ../xkbcomp.in/xkbcomp.patch
