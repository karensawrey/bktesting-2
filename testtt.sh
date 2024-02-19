#!/bin/bash
set -euo pipefail
echo "- Git checkout"
mkdir -p "$BUILDKITE_BUILD_CHECKOUT_PATH"
cd "$BUILDKITE_BUILD_CHECKOUT_PATH"
git clean -ffxdq
git fetch -v --prune -- origin $BUILDKITE_COMMIT
git checkout $BUILDKITE_BRANCH
git reset --hard $BUILDKITE_COMMIT
git clean -ffxdq
