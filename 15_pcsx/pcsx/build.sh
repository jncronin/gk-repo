#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/pcsx

# pcsx_rearmed does not support out-of-tree builds
pushd ../../src/pcsx_rearmed >> /dev/null
CROSS_COMPILE=aarch64-none-gkos- CFLAGS="-g -DALLOW_LIGHTREC_ON_ARM" ./configure --disable-dynamic --dynarec=lightrec --disable-gles
popd >> /dev/null

mkdir -p build-gkrepo
pushd build-gkrepo >> /dev/null
mkdir -p pcsx_rearmed-gk/bin pcsx_rearmed-gk/skin
cp -dpR ../../../src/pcsx_rearmed/pcsx pcsx_rearmed-gk/bin
cp -dpRL ../../../src/pcsx_rearmed/skin/* pcsx_rearmed-gk/skin
tar zcf ${REPOROOT}/pcsx/pcsx_rearmed-gk.tar.gz pcsx_rearmed-gk
popd >> /dev/null
