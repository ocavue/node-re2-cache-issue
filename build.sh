#!/bin/bash

cd $(dirname $0)

set -ex
pwd
find . -type d # make sure that there is not `node_modules`


node --version
npm --version
yarn --version
