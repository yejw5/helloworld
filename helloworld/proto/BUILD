package(
    default_visibility = ["//visibility:public"],
)

licenses(["notice"])  # Apache 2.0

load("@com_google_protobuf//:protobuf.bzl",
     "py_proto_library",
     "cc_proto_library")

cc_proto_library(
    name = "helloworld_cc",
    srcs = ["helloworld.proto"],
    default_runtime = "@com_google_protobuf//:protobuf_lite",
    protoc = "@com_google_protobuf//:protoc",
)
