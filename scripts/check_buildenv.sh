#!/bin/bash

set -e

# check TOOLSDIR, SYSROOT and gcc set
if [[ -z "$TOOLSDIR" ]]; then
    echo "TOOLSDIR not set.  Please source ./gkv4vars.sh first"
    exit 0
fi

if [[ -z "$SYSROOT" ]]; then
    echo "SYSROOT not set.  Please source ./gkv4vars.sh first"
    exit 0
fi

if [[ ! -x $TOOLSDIR/bin/aarch64-none-gkos-c++ ]]; then
    echo "Toolchain not found.  Please source ./gkv4vars.sh first"
    exit 0
fi

if [[ -z "$CMAKE_OPTS" ]]; then
    echo "CMAKE_OPTS not set.  Please source ./gkv4vars.sh first"
    exit 0
fi
