#!/bin/bash

set -e

source ../../scripts/check.sh
mkdir -p ${REPOROOT}/openjk

tar zcf ${REPOROOT}/openjk/ja_config.tar.gz home
