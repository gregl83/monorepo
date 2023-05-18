load("@build_bazel_rules_nodejs//:index.bzl", "nodejs_binary")
load(":directory_rules.bzl", "directory_build")

nodejs_binary(
    name = "node_module_directory_builder_binary",
    data = [
        "@directory_builder//:directory_builder",
    ],
    entry_point = "@directory_builder//:directory_builder",
)

directory_build(
    name = "node_module_directory_build",
    node_binary = ":node_module_directory_builder_binary",
    number_of_files = 5,
    deps = [
        "@directory_builder//:directory_builder"
    ],
)