#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/amiberry

cmake $CMAKE_OPTS -S ../../src/amiberry-lite -B build-gkrepo -DUSE_PCEM=OFF -DUSE_LIBSERIALPORT=OFF -DUSE_LIBENET=OFF -DUSE_PORTMIDI=OFF -DUSE_LIBMPEG2=OFF -DUSE_ZSTD=OFF
make -j16 -C build-gkrepo
cd build-gkrepo && cpack && cp amiberry-lite-5.9.2-gk.tar.gz ${REPOROOT}/mupen64 && cd ..
