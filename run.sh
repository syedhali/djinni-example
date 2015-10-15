#!/bin/bash
base_dir=$(cd "`dirname "$loc"`" && pwd)
in="$base_dir/song.djinni"
cpp_out="$base_dir/generated-src/cpp"
jni_out="$base_dir/generated-src/jni"
objc_out="$base_dir/generated-src/objc"
java_out="$base_dir/generated-src/java"

deps/djinni/src/run \
   --java-out "$java_out" \
   --java-package com.skycatch.jnigenpackage \
   --java-cpp-exception SkyException \
   \
   --cpp-out "$cpp_out" \
   \
   --jni-out "$jni_out" \
   --ident-jni-class NativeFooBar \
   \
   --objc-out "$objc_out" \
   --objc-type-prefix SKY \
   \
   --objcpp-out "$objc_out" \
   \
   --idl "$in"
