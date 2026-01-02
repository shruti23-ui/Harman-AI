#!/bin/bash
# Script 3: Download Pre-built NATS Binary
# Author: Shruti Priya
# Date: January 2, 2026

set -e

echo "========================================="
echo "Download Pre-built NATS Binary"
echo "Author: Shruti Priya"
echo "========================================="
echo ""

DOWNLOAD_DIR="$(dirname "$0")/../benchmark_results"
mkdir -p "$DOWNLOAD_DIR"

# Determine platform
OS=$(uname -s | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m)

if [ "$ARCH" = "x86_64" ]; then
    ARCH="amd64"
fi

# Download URL for latest stable
VERSION="v2.12.3"
URL="https://github.com/nats-io/nats-server/releases/download/${VERSION}/nats-server-${VERSION}-${OS}-${ARCH}.zip"

echo "Platform: $OS-$ARCH"
echo "Version: $VERSION"
echo "Downloading from: $URL"
echo ""

cd "$DOWNLOAD_DIR"
curl -L "$URL" -o nats-prebuilt.zip

echo ""
echo "Extracting..."
unzip -q nats-prebuilt.zip

echo ""
echo "========================================="
echo "Download Complete!"
echo "========================================="
echo "Location: $DOWNLOAD_DIR"
echo ""
ls -lh nats-server-*/nats-server* 2>/dev/null || ls -lh nats-server-*/*.exe 2>/dev/null

# Show version
PREBUILT=$(find . -name "nats-server*" -type f -executable 2>/dev/null | head -1)
if [ -n "$PREBUILT" ]; then
    echo ""
    echo "Version: $($PREBUILT -v)"
fi
