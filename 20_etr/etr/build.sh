#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/etr

# etr does not support out-of-tree builds
pushd ../../src/extremetuxracer >> /dev/null
CXX=aarch64-none-gkos-g++ make -j16 GK=1
popd >> /dev/null

mkdir -p build-gkrepo
pushd build-gkrepo >> /dev/null
mkdir -p etr-gk/bin
cp -dpR ../../../src/extremetuxracer/etr etr-gk/bin
aarch64-none-gkos-strip -S etr-gk/bin/etr
tar zcf ${REPOROOT}/etr/etr-gk.tar.gz etr-gk
popd >> /dev/null
