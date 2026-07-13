#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/dosbox

tar zcf ${REPOROOT}/dosbox/dosbox_dosbench.tar.gz share gkmenu-0.1.1-gk
