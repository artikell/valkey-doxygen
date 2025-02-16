#!/bin/bash

deploy_mode=0
if [ "$1" = "deploy" ]; then
    deploy_mode=1
fi

rm -rf .project
rm -rf docs

git submodule update --init --recursive
git clone --depth 1 git@github.com:artikell/valkey.git .project

cp Doxyfile .project
cp valkey.dox .project

cd .project
export NUM_PROC_THREADS=$(nproc)
doxygen Doxyfile
cd -

mv .project/docs ./

if [ $deploy_mode -eq 0 ]; then
    python3 -m pip install requests
    python3 doxy-coverage.py ./docs/xml
fi
