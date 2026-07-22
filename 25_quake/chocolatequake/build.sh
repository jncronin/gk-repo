#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/quake

cmake $CMAKE_OPTS -S ../../src/chocolate-quake -B build-gkrepo
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp "Chocolate Quake-2.1.0-gk.tar.gz" ${REPOROOT}/quake && cd ..
