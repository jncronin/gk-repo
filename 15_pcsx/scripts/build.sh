#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/pcsx

tar zcf ${REPOROOT}/pcsx/pcsx_scripts.tar.gz gkmenu-0.1.1-gk
