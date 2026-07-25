#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/redalert

tar zcf ${REPOROOT}/redalert/redalert_scripts.tar.gz gkmenu-0.1.1-gk
