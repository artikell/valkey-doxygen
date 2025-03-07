#!/bin/bash

deploy_mode=0
if [ "$1" = "deploy" ]; then
    deploy_mode=1
fi

rm -rf .project
rm -rf docs

git submodule update --init --recursive
git clone --depth 1 https://github.com/valkey-io/valkey.git .project

cp Doxyfile .project
cat postscript/*.dox > .project/valkey.dox

cd .project
export NUM_PROC_THREADS=$(nproc)
doxygen Doxyfile
cd -

mv .project/docs ./

if [ $deploy_mode -eq 0 ]; then
    python3 -m pip install requests
    python3 doxy-coverage.py ./docs/xml
fi
