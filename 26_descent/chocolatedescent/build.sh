#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/descent

cmake $CMAKE_OPTS -S ../../src/ChocolateDescent -B build-gkrepo
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp "ChocolateDescent-0.1.1-gk.tar.gz" ${REPOROOT}/descent && cd ..
