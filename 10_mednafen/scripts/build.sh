#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/mednafen

tar zcf ${REPOROOT}/mednafen/mednafen_scripts.tar.gz gkmenu-0.1.1-gk
