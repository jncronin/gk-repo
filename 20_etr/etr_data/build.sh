#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/etr

mkdir -p build-gkrepo
pushd build-gkrepo >> /dev/null
mkdir -p etr-gk/bin
cp -dpR ../../../src/extremetuxracer/data etr-gk
tar zcf ${REPOROOT}/etr/etr_data-gk.tar.gz etr-gk
popd >> /dev/null
