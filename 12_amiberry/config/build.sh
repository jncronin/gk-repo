#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/amiberry

tar zcf ${REPOROOT}/amiberry/amiberry_config.tar.gz home
