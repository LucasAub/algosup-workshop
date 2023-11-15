#!/usr/bin/env bash
set -Cue

this_dir="$(cd "$( dirname "$0" )" && pwd)"
rootDir="$(cd "${this_dir}/../../.." && pwd)"
binDir="${rootDir}/bin" 

echo "$binDir"

cd "${this_dir}" \
  && nasm HelloWorld.asm -f bin -o "${binDir}/hello.com"