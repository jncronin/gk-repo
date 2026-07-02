#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/mednafen

cmake $CMAKE_OPTS -S ../../src/mupen64-combined -B build-gkrepo
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp mupen64p-0.1.1-gk.tar.gz ${REPOROOT}/mupen64 && cd ..
