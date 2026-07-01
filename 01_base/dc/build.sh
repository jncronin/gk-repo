#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/base

cmake $CMAKE_OPTS -S ../../src/dc -B build-gkrepo
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp dc-0.1.1-gk.tar.gz ${REPOROOT}/base && cd ..
