load("@build_bazel_rules_nodejs//:index.bzl", "js_library")
load("@bazel_paq//:defs.bzl", "paq")

js_library(
    name = "directory_builder",
    srcs = ["index.js"],
    visibility = ["//visibility:public"],
)
paq(
    name = "directory_builder_hash",
    source = ":directory_builder",
)