#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/hatari

tar zcf ${REPOROOT}/hatari/hatari_config.tar.gz home
