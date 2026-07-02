#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/mupen64

tar zcf ${REPOROOT}/mupen64/mupen64_scripts.tar.gz gkmenu-0.1.1-gk
