# Description:
#
package(
    default_visibility = ["//visibility:public"],
)

licenses(["notice"])  # Apache 2.0

load(
    "//helloworld:helloworld.bzl",
    "if_android",
)

cc_library(
    name = "net",
    srcs = glob(
        [
            "*.cc",
        ]
    ),
    copts = [
        "-Werror",
        "-Wextra",
        "-Wno-missing-field-initializers",
    ],
    linkopts = ["-ldl"] + if_android([
        "-pie",
        "-lm",
    ]),
    deps = [
        "//helloworld/public",
        "//helloworld/proto:helloworld_cc",
    ],
)
