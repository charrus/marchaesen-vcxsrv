#!/usr/bin/bash

cd mesalib
cp -r ../mesalib.in/files/* .
git apply ../mesalib.in/mesa.patch
