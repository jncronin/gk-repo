#!/bin/bash

set -e

source ../scripts/check.sh
mkdir -p ${REPOROOT}/base

cmake $CMAKE_OPTS -S ../src/sdlgl_test -B build-gkrepo
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp sdlgl_test-0.1.1-gk.tar.gz ${REPOROOT}/base && cd ..

pushd ../src/sdlgl_test/gk_scripts
tar zcf ${REPOROOT}/base/sdlgl_test_script.tar.gz gkmenu-0.1.1-gk
popd
