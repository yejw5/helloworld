Env:

| deps  | version  | install ref  |
|-------|----------|--------------|
| bazel | 0.16.0   |[bazel install](https://docs.bazel.build/versions/master/install-ubuntu.html)|
| adb   | \>= 1.0.32 | apt-get install android-tools-adb |
| NDK   | r15c     | [NDK installation guide](https://developer.android.com/ndk/guides/setup#install) |

Run:
```
./tools/build.sh
```

Code Structure：
```
├── helloworld
│   ├── BUILD
│   ├── codegen
│   │   └── BUILD
│   ├── core
│   │   ├── BUILD
│   │   └── engine.cc  # which will generate libhelloworld.so, protobuf-lite linked
│   ├── example
│   │   ├── BUILD
│   │   └── example.cc  # depends on libnet.a and libhelloworld.so
│   ├── helloworld.bzl
│   ├── net
│   │   ├── BUILD
│   │   └── create_net.cc  # libnet.a
│   ├── proto
│   │   ├── BUILD
│   │   └── helloworld.proto
│   └── public
│       ├── BUILD
│       └── helloworld.h
├── tools
│   ├── bazel.rc
│   └── build.sh
└── WORKSPACE
```
