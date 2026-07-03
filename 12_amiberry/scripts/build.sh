#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/amiberry

tar zcf ${REPOROOT}/amiberry/amiberry_scripts.tar.gz gkmenu-0.1.1-gk
