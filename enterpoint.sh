#!/bin/bash

cd $(dirname $0)
ROOT=$(pwd)

set -ex
pwd
find . -type d # make sure that there is not `node_modules`


cd $ROOT/npm-example
npm i

cd $ROOT/yarn-example

cd $ROOT/yarnv2-example

