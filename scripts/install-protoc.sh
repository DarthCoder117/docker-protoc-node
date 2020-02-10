#! /bin/bash

VERSION="3.11.3"

BASE_URL="https://github.com/protocolbuffers/protobuf/releases/download"
PLATFORM="$(uname -s)"
ARCH="$(uname -m)"

PROTOC_URL="${BASE_URL}/v${VERSION}/protoc-${VERSION}-${PLATFORM}-${ARCH}.zip"

echo "Downloading protoc from: $PROTOC_URL"
curl -sSL -o protoc_temp.zip ${PROTOC_URL}

echo "Extracting protoc to /usr/local"
unzip protoc_temp.zip -d /usr/local
rm protoc_temp.zip