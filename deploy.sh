#!/bin/bash
set -ex
cd $(dirname "${BASH_SOURCE[0]}")

# Build image
VERSION=$(printf "%05d" $BUILDKITE_BUILD_NUMBER)_$(date +%Y-%m-%d)_$(git rev-parse --short HEAD)
docker build -t nxpkg/lang-go:$VERSION .

# Upload to Docker Hub
docker push nxpkg/lang-go:$VERSION
docker tag nxpkg/lang-go:$VERSION nxpkg/lang-go:latest
docker push nxpkg/lang-go:latest
docker tag nxpkg/lang-go:$VERSION nxpkg/lang-go:insiders
docker push nxpkg/lang-go:insiders
