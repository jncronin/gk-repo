#!/bin/bash

if [ -z "${REPOROOT}" ]; then
    REPOROOT=$HOME/opt/gkv4-repo
fi

echo "Creating repository in $REPOROOT"
