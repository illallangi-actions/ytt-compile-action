#!/bin/sh

# config
source=${SOURCE:-source}
target=${TARGET:-target}

echo ytt --debug --ignore-unknown-comments --strict --file ${GITHUB_WORKSPACE}/${source} --output yaml --output-directory ${GITHUB_WORKSPACE}/${target}
ytt --debug --ignore-unknown-comments --strict --file ${GITHUB_WORKSPACE}/${source} --output yaml --output-directory ${GITHUB_WORKSPACE}/${target}