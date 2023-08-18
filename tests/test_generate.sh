#!/bin/bash

source tests/setup.sh

pdm install
pdm run nox -e test

popd
rm -rf $DEST