#!/bin/bash
set -e

VERSION="${1:-15.4}"
echo "Version:$VERSION"

docker build -t molecule-opensuse --build-arg VERSION=$VERSION .
docker run -dit --name molecule-opensuse-$VERSION molecule-opensuse

docker ps