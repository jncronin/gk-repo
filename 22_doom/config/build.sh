#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/doom

tar zcf ${REPOROOT}/doom/doom_config.tar.gz home
