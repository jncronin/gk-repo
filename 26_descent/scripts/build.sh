#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/descent

tar zcf ${REPOROOT}/descent/descent_scripts.tar.gz gkmenu-0.1.1-gk
