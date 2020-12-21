#!/bin/bash

cd $(dirname $0)
ROOT=$(pwd)

set -ex
pwd

# make sure that there is not `node_modules`
find . -type d -name node_modules
find . -type d -name node_modules | xargs rm -rf
find . -type d -name node_modules

node --version

#
cd $ROOT/npm-example
npm --version
npm i

#
cd $ROOT/yarn-example
yarn --version
yarn install


#
cd $ROOT/yarnv2-example
yarn --version
yarn install --inline-builds

#
cd $ROOT/pnpm-example
npm install -g pnpm
pnpm --version
pnpm i
