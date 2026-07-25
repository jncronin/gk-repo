#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/redalert

cmake $CMAKE_OPTS -S ../../src/CnC_and_Red_Alert -B build-gkrepo
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp "CnCRedAlert-0.1.1-gk.tar.gz" ${REPOROOT}/redalert && cd ..
