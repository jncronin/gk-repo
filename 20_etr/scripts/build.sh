#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/etr

tar zcf ${REPOROOT}/etr/etr_scripts.tar.gz gkmenu-0.1.1-gk
