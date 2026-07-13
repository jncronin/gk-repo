#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/dosbox

tar zcf ${REPOROOT}/dosbox/dosbox_scripts.tar.gz gkmenu-0.1.1-gk
