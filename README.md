# Harman AI - NATS Server Assignment

This repository contains a comprehensive analysis and benchmarking of the NATS messaging system.

## Project Overview

A complete implementation of NATS server performance analysis, including custom builds, benchmarking, and architectural deep dives.

## Quick Start

For detailed setup instructions, see [START_HERE.md](START_HERE.md)

## Project Structure

```
├── nats-assignment/
│   ├── README.md                          # Assignment details
│   ├── ASSIGNMENT_CHECKLIST.md           # Task completion tracker
│   ├── scripts/                          # Automation scripts
│   │   ├── run_all.sh                   # Master script
│   │   ├── 1_clone_and_build.sh         # Build from source
│   │   ├── 2_run_benchmarks.sh          # Run performance tests
│   │   └── 3_download_prebuilt.sh       # Download binaries
│   ├── benchmark_results/                # Performance data
│   ├── documentation/                    # NATS review & analysis
│   └── analysis/                        # Architecture deep dive
└── START_HERE.md                         # Getting started guide
```

## Key Features

- **Custom NATS Build**: Built from source with performance optimizations
- **Comprehensive Benchmarking**: Detailed performance comparisons
- **Architecture Analysis**: In-depth review of NATS internals
- **Automated Scripts**: Complete automation for setup and testing

## Benchmark Results

Performance benchmarks comparing custom-built vs prebuilt NATS server binaries are available in:
- [bench-custom.txt](nats-assignment/benchmark_results/bench-custom.txt)
- [bench-prebuilt-comparison.txt](nats-assignment/benchmark_results/bench-prebuilt-comparison.txt)
- [comparison_summary.txt](nats-assignment/benchmark_results/comparison_summary.txt)

## Documentation

- [NATS Review](nats-assignment/documentation/NATS-REVIEW.md) - Comprehensive system review
- [Architecture Deep Dive](nats-assignment/analysis/architecture_deep_dive.md) - Technical analysis
- [Assignment Checklist](nats-assignment/ASSIGNMENT_CHECKLIST.md) - Task tracking

## Technologies

- **NATS Server** - High-performance messaging system
- **Go** - Programming language for NATS
- **Bash** - Automation scripts

## License

This project is part of an assignment for Harman AI.

## Author

**Shruti**
- GitHub: [@shruti23-ui](https://github.com/shruti23-ui)
