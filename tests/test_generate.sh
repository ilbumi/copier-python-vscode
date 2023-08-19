#!/bin/bash

source tests/setup.sh

pdm install

echo
echo "///////////////////////////////////////////"
echo "             TESTING PROJECT"
echo "///////////////////////////////////////////"
echo

pdm run nox -e test

echo
echo "///////////////////////////////////////////"
echo "       INITIAL CODE QUALITY CHECKS"
echo "///////////////////////////////////////////"
echo

pdm run nox -e format
pdm run nox -e check_types
pdm run nox -e lint
pdm run nox -e check_safety

echo
echo "///////////////////////////////////////////"
echo "              COMMIT CHECKS"
echo "///////////////////////////////////////////"
echo

echo '"""Module that contains the command line application."""' > some_code.py
echo 'print("Fine")' >> some_code.py

git add -A .
git commit -m "fix: fix a bug"

pdm run nox -e format
pdm run nox -e check_types
pdm run nox -e lint
pdm run nox -e check_safety

popd
rm -rf $DEST