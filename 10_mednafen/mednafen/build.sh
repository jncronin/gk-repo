#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/mednafen

SCRIPT_DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

mkdir -p build-gkrepo
cd build-gkrepo

CC=aarch64-none-gkos-gcc CXX=aarch64-none-gkos-g++ ../../../src/mednafen/configure --with-libflac=off --host=aarch64-none-gkos --prefix=$SCRIPT_DIR/build-gkrepo/mednafen-gk --with-sdl-prefix=$SYSROOT/usr --enable-debugger=no --enable-cjk-fonts=no --enable-fancy-scalers=no --enable-apple2=no --enable-gb=yes --enable-gba=no --enable-lynx=yes --enable-md=yes --enable-nes=yes --enable-ngp=no --enable-pce=no --enable-pce-fast=no --enable-pcfx=no --enable-psx=no --enable-sasplay=no --enable-sms=yes --enable-snes=no --enable-snes-faust=yes --enable-ss=no --enable-ssfplay=no --enable-vb=no --enable-wswan=no --enable-alsa=no --enable-jack=no --disable-nls

make -j16 install

tar zcf ${REPOROOT}/mednafen/mednafen.tar.gz mednafen-gk

cd ..
