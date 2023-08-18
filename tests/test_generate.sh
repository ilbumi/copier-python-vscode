#!/bin/bash

source tests/setup.sh

pdm install -G nox
nox -e test

popd
rm -rf $DEST