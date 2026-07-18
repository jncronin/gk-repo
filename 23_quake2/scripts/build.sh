#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/quake2

tar zcf ${REPOROOT}/quake2/quake2_scripts.tar.gz gkmenu-0.1.1-gk
