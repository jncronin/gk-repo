#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/neverball

tar zcf ${REPOROOT}/neverball/neverball_scripts.tar.gz gkmenu-0.1.1-gk
