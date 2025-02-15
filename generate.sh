#!/bin/bash

rm -rf .project
rm -rf docs
git clone --depth 1 git@github.com:artikell/valkey.git .project

cp Doxyfile .project
cp valkey.dox .project

cd .project
doxygen Doxyfile
cd -

mv .project/docs ./

python3 doxy-coverage.py ./docs/xml