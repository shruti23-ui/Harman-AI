#!/bin/bash
# Script 2: Run NATS Benchmarks
# Author: Shruti Priya
# Date: January 2, 2026

set -e

echo "========================================="
echo "NATS Benchmark Script"
echo "Author: Shruti Priya"
echo "========================================="
echo ""

BUILD_DIR="$HOME/nats-build/nats-server"
OUTPUT_DIR="$(dirname "$0")/../benchmark_results"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

mkdir -p "$OUTPUT_DIR"

# Check if source exists
if [ ! -d "$BUILD_DIR" ]; then
    echo "ERROR: Build directory not found at $BUILD_DIR"
    echo "Run script 1 first: ./1_clone_and_build.sh"
    exit 1
fi

cd "$BUILD_DIR/server"

echo "Running benchmarks..."
echo "This takes approximately 3-5 minutes"
echo "Testing various message sizes and subscriber configurations"
echo ""

OUTPUT_FILE="$OUTPUT_DIR/benchmark_${TIMESTAMP}.txt"

{
    echo "NATS Benchmark Results"
    echo "======================"
    echo "Date: $(date)"
    echo "Analyst: Shruti Priya"
    echo "System: $(uname -a)"
    echo "Go Version: $(go version)"
    echo ""

    go test -bench=BenchmarkPublish -benchtime=5s -run=^$ -timeout=30m

    echo ""
    echo "Benchmarks completed: $(date)"
} | tee "$OUTPUT_FILE"

echo ""
echo "========================================="
echo "Benchmarks Complete!"
echo "========================================="
echo "Results saved to: $OUTPUT_FILE"
