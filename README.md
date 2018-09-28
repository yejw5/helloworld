运行：
```
./tools/build.sh
```

代码依赖：
```
├── helloworld
│   ├── BUILD
│   ├── codegen
│   │   └── BUILD
│   ├── core
│   │   ├── BUILD
│   │   └── engine.cc  # 核心代码，其实就是拷贝NetDef对象的内容，还有一个print函数，会与pb一并编译成so
│   ├── example
│   │   ├── BUILD
│   │   └── example.cc  # 依赖于.a和.so
│   ├── helloworld.bzl
│   ├── net
│   │   ├── BUILD
│   │   └── create_net.cc  # 类似于mace里面的codegen代码，创建一个NetDef对象
│   ├── proto
│   │   ├── BUILD
│   │   └── helloworld.proto
│   └── public
│       ├── BUILD
│       └── helloworld.h  # engine的接口
├── tools
│   ├── bazel.rc
│   └── build.sh
└── WORKSPACE
```
