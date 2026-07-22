#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/openjk

tar zcf ${REPOROOT}/openjk/ja_scripts.tar.gz gkmenu-0.1.1-gk
