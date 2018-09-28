#!/bin/bash

set -e
set -x

DYNAMIC_LIB_PATH="bazel-bin/helloworld/core/libhelloworld.so"
NET_LIB_PATH="bazel-bin/helloworld/net/libnet.a"
DYNAMIC_EXAMPLE_BIN_PATH="bazel-bin/helloworld/example/example_dynamic"

CODEGEN_LIB_DIR="helloworld/codegen/lib/"
PHONE_DATA_DIR="/data/local/tmp/helloworld/"

bazel build -s --config android --config optimization --cpu=arm64-v8a helloworld/core:libhelloworld.so

bazel build -s --config android --config optimization --cpu=arm64-v8a helloworld/net:net

rm -rf $CODEGEN_LIB_DIR
mkdir $CODEGEN_LIB_DIR
cp -rf $DYNAMIC_LIB_PATH $CODEGEN_LIB_DIR
cp -rf $NET_LIB_PATH $CODEGEN_LIB_DIR

bazel build -s --config android --config optimization --cpu=arm64-v8a helloworld/example:example_dynamic

adb shell rm -rf $PHONE_DATA_DIR
adb shell mkdir -p $PHONE_DATA_DIR
adb push $DYNAMIC_LIB_PATH $PHONE_DATA_DIR
adb push $DYNAMIC_EXAMPLE_BIN_PATH $PHONE_DATA_DIR

# adb shell "LD_LIBRARY_PATH=$PHONE_DATA_DIR        \
#   VALGRIND_LIB=/data/local/valgrind/lib/valgrind  \
#   /data/local/valgrind/bin/valgrind               \
#   --track-origins=yes                             \
#   --leak-check=full                               \
#   -v                                              \
#   $PHONE_DATA_DIR/example_dynamic"

adb shell "LD_LIBRARY_PATH=$PHONE_DATA_DIR \
  $PHONE_DATA_DIR/example_dynamic"

rm -rf $CODEGEN_LIB_DIR
