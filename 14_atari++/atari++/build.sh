#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/atari++

cmake $CMAKE_OPTS -S ../../src/atari++ -B build-gkrepo
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp atari++-0.1.1-gk.tar.gz ${REPOROOT}/atari++ && cd ..
