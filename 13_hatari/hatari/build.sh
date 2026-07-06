#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/hatari

cmake $CMAKE_OPTS -S ../../src/hatari -B build-gkrepo
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp Hatari-0.1.1-gk.tar.gz ${REPOROOT}/hatari && cd ..
