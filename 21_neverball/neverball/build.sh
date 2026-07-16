#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/neverball

cmake $CMAKE_OPTS -S ../../src/neverball -B build-gkrepo
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp neverball-0.1.1-gk.tar.gz ${REPOROOT}/neverball && cd ..
