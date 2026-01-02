#!/bin/bash
# Script 1: Clone and Build NATS from Source
# Author: Shruti Priya
# Date: January 2, 2026

set -e

echo "========================================="
echo "NATS Clone and Build Script"
echo "Author: Shruti Priya"
echo "========================================="
echo ""

# Check Go installation
if ! command -v go &> /dev/null; then
    echo "ERROR: Go is not installed!"
    echo "Install from: https://go.dev/dl/"
    exit 1
fi

echo "Go version: $(go version)"
echo ""

# Create build directory
BUILD_DIR="$HOME/nats-build"
mkdir -p "$BUILD_DIR"
cd "$BUILD_DIR"

# Clone repository
if [ -d "nats-server" ]; then
    echo "Updating existing repository..."
    cd nats-server
    git pull
else
    echo "Cloning NATS repository..."
    git clone https://github.com/nats-io/nats-server.git
    cd nats-server
fi

echo ""
echo "Current commit:"
git log -1 --oneline
echo ""

# Build
echo "Building NATS server..."
go build -o nats-server

echo ""
echo "========================================="
echo "Build Complete!"
echo "========================================="
echo "Version: $(./nats-server -v)"
echo "Binary size: $(du -h nats-server | cut -f1)"
echo ""
echo "Binary location: $BUILD_DIR/nats-server/nats-server"
echo ""
echo "To run: cd $BUILD_DIR/nats-server && ./nats-server"
