load("@build_bazel_rules_nodejs//:index.bzl", "nodejs_binary")
load("@bazel_paq//:defs.bzl", "paq")
load(":directory_rules.bzl", "directory_build")

nodejs_binary(
    name = "directory_builder_binary",
    data = [
        "@directory_builder//:directory_builder",
    ],
    entry_point = "@directory_builder//:directory_builder",
)

directory_build(
    name = "directory_build",
    node_binary = ":directory_builder_binary",
    number_of_files = 5,
    deps = [
        "@directory_builder//:directory_builder"
    ],
)
paq(
    name = "directory_build_hash",
    source = ":directory_build",
)