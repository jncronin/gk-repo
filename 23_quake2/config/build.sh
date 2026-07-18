#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/quake2

tar zcf ${REPOROOT}/quake2/quake2_config.tar.gz home
