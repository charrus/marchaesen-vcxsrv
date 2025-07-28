#!/usr/bin/env bash

if [ "${1}" == "1" ]; then
  export IS64=1
elif [ "${1}" == "0" ]; then
  export IS64=0
else
  echo "Please pass 1 (64-bit compilation) or 0 (32-bit compilation) as first argument"
  exit 1
fi
if [ "${2}" == "" ] ; then
  echo "Please pass number of parallel builds as second argument"
  exit 1
fi
if [ "${3}" == "" ] ; then
  echo "Please pass build type as third argument.  D for DEBUG, R for RELEASE, A for ALL"
  exit 1
fi
if [ "${3}" == "A" ] ; then
  export BUILDRELEASE=1
  export BUILDDEBUG=1
fi
if [ "${3}" == "R" ] ; then
  export BUILDRELEASE=1
  export BUILDDEBUG=0
fi
if [ "${3}" == "D" ] ; then
  export BUILDRELEASE=0
  export BUILDDEBUG=1
fi
source ./setenv.sh ${IS64}
cd xorg-server/xkeyboard-config
./build.sh
