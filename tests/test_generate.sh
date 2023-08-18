#!/bin/bash

source tests/setup.sh

pdm install
nox -e test

popd
rm -rf $DEST