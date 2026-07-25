#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/koules

cmake $CMAKE_OPTS -S ../../src/koules -B build-gkrepo
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp "koules-0.1.1-gk.tar.gz" ${REPOROOT}/koules && cd ..
