#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/hatari

tar zcf ${REPOROOT}/hatari/hatari_scripts.tar.gz gkmenu-0.1.1-gk
