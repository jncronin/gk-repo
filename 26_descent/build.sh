#!/bin/bash

# iterate through subdirectories, running build.sh in each

for dir in *; do
    [[ -d "$dir" ]] || continue

    pushd $dir > /dev/null || continue

    if [[ -x "./build.sh" ]]; then
        echo "*** Running $dir/build.sh"
        ./build.sh
    fi

    popd > /dev/null || return
done
