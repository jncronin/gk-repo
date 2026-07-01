#!/bin/bash

set -e

source ../scripts/check.sh

# build libdrm
meson setup --cross-file ../src/gk-userland/meson_cross_file.txt -Dintel=disabled -Dradeon=disabled -Damdgpu=disabled -Dnouveau=disabled -Dvmwgfx=disabled -Domap=disabled -Dexynos=disabled -Dfreedreno=disabled -Dtegra=disabled -Dvc4=disabled -Detnaviv=enabled -Dtests=false -Dvalgrind=disabled -Dman-pages=disabled --prefix $SYSROOT/usr build-gkrepo/libdrm ../src/gk-userland/libdrm-2.4.131/

meson compile -C build-gkrepo/libdrm
meson install -C build-gkrepo/libdrm

# drm.h not installed by the above - fix
cp ../src/gk-userland/libdrm-2.4.131/include/drm/drm.h $SYSROOT/usr/include
cp ../src/gk-userland/libdrm-2.4.131/include/drm/drm_mode.h $SYSROOT/usr/include
cp ../src/gk-userland/libdrm-2.4.131/include/drm/drm_fourcc.h $SYSROOT/usr/include

# build mesa
meson setup -Dgallium-drivers=etnaviv -Dvulkan-drivers= -Dplatforms= -Degl=enabled -Dglx=disabled -Dglx-direct=false -Ddefault_library=static --cross-file ../src/gk-userland/meson_cross_file.txt -Dbuildtype=release -Db_ndebug=true -Dcmake_prefix_path=$SYSROOT/usr/lib/cmake -Dshader-cache=enabled -Dshader-cache-default=true -Ddri-drivers-path=lib --prefix $SYSROOT/usr build-gkrepo/mesa ../src/mesa

meson compile -C build-gkrepo/mesa
meson install -C build-gkrepo/mesa

# combine the various mesa static libraries into libGL.a
echo -n -e "create $SYSROOT/usr/lib/libGL2.a\naddlib $SYSROOT/usr/lib/libglapi_bridge.a\naddlib $SYSROOT/usr/lib/libglapi.a\naddlib $SYSROOT/usr/lib/libgallium.a\naddlib $SYSROOT/usr/lib/libexpat.a\naddlib $SYSROOT/usr/lib/libgbm.a\naddlib $SYSROOT/usr/lib/gbm/dri_gbm.a\naddlib $SYSROOT/usr/lib/libdrm.a\nsave\nend\n" | aarch64-none-gkos-ar -M
mv $SYSROOT/usr/lib/libGL2.a $SYSROOT/usr/lib/libGL.a

# now compile gkgl
cmake $CMAKE_OPTS -S ../src/gk-userland/gkgl -B build-gkrepo/gkgl
make -j16 -C build-gkrepo/gkgl install

# combine gkgl_base and libEGL to libGKGL.a
echo -n -e "create $SYSROOT/usr/lib/libGKGL.a\naddlib $SYSROOT/usr/lib/libgkgl_base.a\naddlib $SYSROOT/usr/lib/libEGL.a\nsave\nend\n" | aarch64-none-gkos-ar -M
