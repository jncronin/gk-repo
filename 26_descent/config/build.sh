#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/descent

tar zcf ${REPOROOT}/descent/descent_config.tar.gz ChocolateDescent-0.1.1-gk
