#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/base

tar zcf ${REPOROOT}/base/base_scripts.tar.gz gkmenu-0.1.1-gk
