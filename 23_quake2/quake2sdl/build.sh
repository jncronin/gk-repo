#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/quake2

cmake $CMAKE_OPTS -S ../../src/quake2sdl -B build-gkrepo -DQGL=ON -DWITH_QMAX=OFF
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp "quake2sdl-0.17-gk.tar.gz" ${REPOROOT}/quake2 && cd ..
