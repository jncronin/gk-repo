#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/etr

tar zcf ${REPOROOT}/etr/etr_config.tar.gz home
