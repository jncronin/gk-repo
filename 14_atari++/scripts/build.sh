#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/atari++

tar zcf ${REPOROOT}/atari++/atari++_scripts.tar.gz gkmenu-0.1.1-gk
