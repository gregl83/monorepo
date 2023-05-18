load("@build_bazel_rules_nodejs//:index.bzl", "nodejs_binary")
load(":deps.bzl", "node_output_dir")

nodejs_binary(
    name = "data_factory_binary",
    data = [
        "@dir_build//:dir_build",
    ],
    entry_point = "@dir_build//:dir_build",
)

node_output_dir(
    name = "data_factory_arm",
    node_binary = ":data_factory_binary",
    file_count = 5,
    deps = [
        "@dir_build//:dir_build"
    ],
)