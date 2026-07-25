#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/redalert

tar zcf ${REPOROOT}/redalert/redalert_config.tar.gz share
