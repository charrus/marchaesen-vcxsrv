#!/usr/bin/bash

cd mesalib.in
cp -r ../mesalib.in/files/* .
git apply ../mesalib.in/mesa.patch
