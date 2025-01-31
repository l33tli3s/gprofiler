#!/usr/bin/env bash
#
# Copyright (c) Granulate. All rights reserved.
# Licensed under the AGPL3 License. See LICENSE.md in the project root for license information.
#
set -euo pipefail

# downloading the zip because the git is very large (this is also very large, but still smaller)
curl -SL https://codeload.github.com/Granulate/linux/zip/40a7823cf90a7e69ce8af88d224dfdd7e371de2d -o linux.zip
unzip -qq linux.zip
rm linux.zip
cd linux-*/
make -C tools/perf LDFLAGS=-static
cp tools/perf/perf /perf
