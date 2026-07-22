#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/quake

tar zcf ${REPOROOT}/quake/quake_config.tar.gz share
