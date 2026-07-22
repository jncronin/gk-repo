#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/quake

tar zcf ${REPOROOT}/quake/quake_scripts.tar.gz gkmenu-0.1.1-gk
