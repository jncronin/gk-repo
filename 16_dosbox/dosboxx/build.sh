#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/dosbox

mkdir -p build-gkrepo

# check autogen.sh has been run in the dosbox-x repo
CONFIG_SUB=../../src/dosbox-x/config.sub
if [ ! -f ${CONFIG_SUB} ]; then
    pushd ../../src/dosbox-x >> /dev/null
    ./autogen.sh
    popd >> /dev/null
fi

# check config.sub supports gkos
if ! grep -q gkos ${CONFIG_SUB}; then
    # patch config.sub
    INSERTAT=$(grep -n "case \$os in" ${CONFIG_SUB} | awk -F ':' '{print $1}' | tail -n 1)
    INSERTAFTER=$((INSERTAT + 1))
    { head -n ${INSERTAT} ${CONFIG_SUB}; echo "gkos*) ;;"; tail -n +${INSERTAFTER} ${CONFIG_SUB}; } > build-gkrepo/config.sub
    cp build-gkrepo/config.sub ${CONFIG_SUB}
fi

# build
pushd build-gkrepo >> /dev/null

BUILDDIR=$(pwd)

PKG_CONFIG_PATH=${SYSROOT}/usr/lib/pkgconfig SDL_CONFIG=${SYSROOT}/usr/bin/sdl-config SDL2_CONFIG=${SYSROOT}/usr/bin/sdl2-config CC=aarch64-none-gkos-gcc CXX=aarch64-none-gkos-g++ ../../../src/dosbox-x/configure --host=aarch64-none-gkos --prefix=$BUILDDIR/dosboxx-gkv4 --disable-sdlnet --disable-x11 --disable-sdl2test --enable-sdl2 --disable-sdl --disable-sdltest --disable-gamelink --disable-opengl --disable-alsatest --disable-printer --disable-xbrz --enable-scaler-full-line --disable-alsa-midi --disable-screenshots --disable-libslirp --enable-libfluidsynth --with-sdl-prefix=${SYSROOT}/usr --with-sdl2-prefix=${SYSROOT}/usr --with-sdl2-exec-prefix=${SYSROOT}/usr --with-sdl-exec-prefix=${SYSROOT}/usr SDL2_CONFIG=${SYSROOT}/usr/bin/sdl2-config PKG_CONFIG_PATH=${SYSROOT}/usr/lib/pkgconfig 

make -j16
make -j16 install

aarch64-none-gkos-strip -S dosboxx-gkv4/bin/dosbox-x

tar zcf ${REPOROOT}/dosbox/dosboxx_gkv4.tar.gz dosboxx-gkv4

popd >> /dev/null
