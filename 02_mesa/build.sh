#!/bin/bash

set -e

source ../scripts/check.sh

# build libdrm
meson setup --cross-file ../src/gk-userland/meson_cross_file.txt -Dintel=disabled -Dradeon=disabled -Damdgpu=disabled -Dnouveau=disabled -Dvmwgfx=disabled -Domap=disabled -Dexynos=disabled -Dfreedreno=disabled -Dtegra=disabled -Dvc4=disabled -Detnaviv=enabled -Dtests=false -Dvalgrind=disabled -Dman-pages=disabled --prefix $SYSROOT/usr build-gkrepo/libdrm ../src/gk-userland/libdrm-2.4.131/

meson compile -C build-gkrepo/libdrm
meson install -C build-gkrepo/libdrm

# build mesa
meson setup -Dgallium-drivers=etnaviv -Dvulkan-drivers= -Dplatforms= -Degl=enabled -Dglx=disabled -Dglx-direct=false -Ddefault_library=static --cross-file ../src/gk-userland/meson_cross_file.txt -Dbuildtype=release -Db_ndebug=true -Dcmake_prefix_path=~/opt/gkv4/usr/lib/cmake -Dshader-cache=enabled -Dshader-cache-default=true -Ddri-drivers-path=lib --prefix $SYSROOT/usr build-gkrepo/mesa ../src/mesa

meson compile -C build-gkrepo/mesa

