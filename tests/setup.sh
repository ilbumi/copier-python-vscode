#!/bin/bash

set -e -o pipefail

DEST=tests/tmp

rm -fr ${DEST}

echo "///////////////////////////////////////////"
echo "             TAGGING TEMPLATE COPY"
echo "///////////////////////////////////////////"
template=$(mktemp -d)
cp -rf . $template

pushd $template
git add -A . || true
git commit -m "test" || true
git tag 99.99.99
popd

echo "Template is located at ${template}"
echo
echo "///////////////////////////////////////////"
echo "             GENERATING PROJECT"
echo "///////////////////////////////////////////"
echo

copier copy --trust --defaults -r HEAD "${template}" "${DEST}" \
-d project_name="copier-pdm-testing" \
-d project_description='Testing this great template' \
-d author_fullname="Tester" \
-d author_username="tester" \
-d author_email="tester@example.org" \
-d repository_provider="github.com"

pushd $DEST
source setup_project.sh
