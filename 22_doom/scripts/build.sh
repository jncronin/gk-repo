#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/doom

tar zcf ${REPOROOT}/doom/doom_scripts.tar.gz gkmenu-0.1.1-gk
