#!/bin/bash

# Exit if any subcommand fails
set -e

cargo test --release

if [ -n "$WITH_LIBSNARK" ]; then
	cargo -Z package-features test --release --package zokrates_cli --features="libsnark"
fi
