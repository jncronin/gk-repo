#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/dosbox

tar zcf ${REPOROOT}/dosbox/dosbox_config.tar.gz home
