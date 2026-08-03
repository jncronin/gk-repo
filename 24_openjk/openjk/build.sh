#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/openjk

cmake $CMAKE_OPTS_SHARED -S ../../src/OpenJK -B build-gkrepo
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp "OpenJK-GNU-arm64-JKASP.tar.gz" "OpenJK-GNU-arm64-JK2SP.tar.gz" ${REPOROOT}/openjk && cd ..
