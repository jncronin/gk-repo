#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/openjk

cmake $CMAKE_OPTS -S ../../src/OpenJK -B build-gkrepo
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp "OpenJK-Generic-arm64-JKASP.tar.gz" "OpenJK-Generic-arm64-JK2SP.tar.gz" ${REPOROOT}/openjk && cd ..
