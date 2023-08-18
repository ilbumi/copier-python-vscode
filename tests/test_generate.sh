#!/bin/bash

source tests/setup.sh

pdm install nox
nox -e test

popd
rm -rf $DEST