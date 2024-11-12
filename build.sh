#!/bin/bash
set -ex
curl -LsO "https://github.com/microsoft/snmalloc/archive/refs/heads/main.tar.gz"
tar xf main.tar.gz
rm main.tar.gz
mv snmalloc-main snmalloc
cd snmalloc
mkdir -p build
cd build
CC=clang CXX=clang++ cmake -G Ninja .. -DCMAKE_BUILD_TYPE=Release
ninja -j$(nproc)
cp --dereference -f libsnmallocshim-checks.so /out/libsnmallocshim-checks.so
cd ../..
