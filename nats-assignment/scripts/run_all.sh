#!/bin/bash
# Master Script: Run All NATS Analysis Steps
# Author: Shruti Priya
# Date: January 2, 2026

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "========================================="
echo "NATS Complete Analysis Pipeline"
echo "Author: Shruti Priya"
echo "========================================="
echo ""
echo "This script will:"
echo "1. Clone and build NATS from source"
echo "2. Run performance benchmarks"
echo "3. Download pre-built binary for comparison"
echo ""
echo "Total estimated time: 10-15 minutes"
echo ""
read -p "Press Enter to continue..."

echo ""
echo "Step 1: Clone and Build NATS from Source"
echo "========================================="
bash "$SCRIPT_DIR/1_clone_and_build.sh"

echo ""
echo "Step 2: Run Performance Benchmarks"
echo "==================================="
bash "$SCRIPT_DIR/2_run_benchmarks.sh"

echo ""
echo "Step 3: Download Pre-built Binary"
echo "=================================="
bash "$SCRIPT_DIR/3_download_prebuilt.sh"

echo ""
echo "========================================="
echo "All Steps Completed Successfully!"
echo "========================================="
echo ""
echo "Results Location:"
echo "  Benchmarks: $SCRIPT_DIR/../benchmark_results/"
echo "  Documentation: $SCRIPT_DIR/../documentation/NATS-REVIEW.md"
echo "  Analysis: $SCRIPT_DIR/../analysis/"
echo ""
echo "Next steps:"
echo "1. Review benchmark results"
echo "2. Read the complete analysis in documentation/"
echo "3. Share findings as needed"
