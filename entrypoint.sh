#!/bin/sh

# config
source=${SOURCE:-source}/
target=${TARGET:-target}/
temp=${TEMP:-$(mktemp -d -t ytt-compile-action-XXXXXXXXXX)}/

echo rsync -zarv --include="*/" --include="*.yaml" --exclude="*" "${GITHUB_WORKSPACE}/${source}" "${temp}"
rsync -zarv --include="*/" --include="*.yaml" --exclude="*" "${GITHUB_WORKSPACE}/${source}" "${temp}"

echo ytt --debug --ignore-unknown-comments --strict --file "${temp}" --output yaml --output-directory "${GITHUB_WORKSPACE}/${target}"
ytt --debug --ignore-unknown-comments --strict --file "${temp}" --output yaml --output-directory "${GITHUB_WORKSPACE}/${target}"