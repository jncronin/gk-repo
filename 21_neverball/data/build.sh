#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/neverball

# first build a _build system_ version of mapc
cmake -S ../../src/neverball/mapc_cmake -B build-gkrepo/build_mapc
make -C build-gkrepo/build_mapc -j16

# now generate a data directory
mkdir -p build-gkrepo/neverball-0.1.1-gk
cp -dpR ../../src/neverball/data build-gkrepo/neverball-0.1.1-gk

# run mapc to convert .map files to .sol
pushd build-gkrepo/neverball-0.1.1-gk >> /dev/null
MAP_FILES=$(find data -name "*.map" \! -name "*.autosave.map")
for i in $MAP_FILES; do
    ../build_mapc/mapc $i data
done
popd >> /dev/null

pushd build-gkrepo >> /dev/null
tar zcf ${REPOROOT}/neverball/neverball_data.tar.gz neverball-0.1.1-gk
popd >> /dev/null
