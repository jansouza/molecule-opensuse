#!/bin/bash
set -e

VERSION="${1:-15.4}"
echo "Version:$VERSION"

docker stop molecule-opensuse-$VERSION
docker rm molecule-opensuse-$VERSION
docker rmi molecule-opensuse
