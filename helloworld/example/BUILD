# Examples
load(
    "//helloworld:helloworld.bzl",
    "if_android",
)

cc_binary(
    name = "example_static",
    srcs = ["example.cc"],
    copts = [
        "-Werror",
        "-Wextra",
    ],
    linkopts = [
        "-lm",
    ] + if_android([
        "-ldl",
        "-pie",
        "-llog",
    ]),
    linkstatic = 1,
    deps = [
        "//helloworld/public",
        "//helloworld/net",
        "//helloworld/proto:helloworld_cc",
        "//helloworld/codegen:generated_libhello",
    ],
)

cc_binary(
    name = "example_dynamic",
    srcs = ["example.cc"],
    copts = [
        "-Werror",
        "-Wextra",
        "-Wno-missing-field-initializers",
    ],
    linkopts = [
        "-lm",
    ] + if_android([
        "-ldl",
        "-pie",
        "-llog",
    ]),
    linkstatic = 1,
    deps = [
        "//helloworld/public",
        "//helloworld/codegen:generated_libhello",
    ],
)

