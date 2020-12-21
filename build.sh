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
time npm i

#
cd $ROOT/yarn-example
yarn --version
time yarn install --verbose


#
cd $ROOT/yarnv2-example
yarn --version
time yarn install --inline-builds

#
cd $ROOT/pnpm-example
npm install -g pnpm
pnpm --version
time pnpm i --loglevel debug --reporter append-only
