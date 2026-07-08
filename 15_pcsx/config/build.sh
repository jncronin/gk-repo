#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/pcsx

tar zcf ${REPOROOT}/pcsx/pcsx_config.tar.gz home
