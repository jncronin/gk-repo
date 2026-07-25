#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/koules

tar zcf ${REPOROOT}/koules/koules_scripts.tar.gz gkmenu-0.1.1-gk
