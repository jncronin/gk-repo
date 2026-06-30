#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/base

cmake $CMAKE_OPTS -S ../../src/gk-userland/gk-menu -B build-gkrepo
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp gkmenu-0.1.1-gk.tar.gz ${REPOROOT}/base && cd ../..
