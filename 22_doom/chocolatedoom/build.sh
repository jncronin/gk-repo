#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/doom

cmake $CMAKE_OPTS -S ../../src/chocolate-doom -B build-gkrepo -DENABLE_SDL2_NET=OFF
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp "Chocolate Doom-3.1.1-gk.tar.gz" ${REPOROOT}/doom && cd ..
