workspace(name = "monorepo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Download and set up the rules_nodejs repository
http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "dcc55f810142b6cf46a44d0180a5a7fb923c04a5061e2e8d8eb05ccccc60864b",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/5.8.0/rules_nodejs-5.8.0.tar.gz"],
)
load("@build_bazel_rules_nodejs//:repositories.bzl", "build_bazel_rules_nodejs_dependencies")
build_bazel_rules_nodejs_dependencies()

# Set up the Node.js toolchain
load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories")

node_repositories(
    node_version = "17.9.1",
    yarn_version = "1.22.19",
)

http_archive(
    name = "bazel_paq",
    sha256 = "fd0f8a6e24d77a8994e19ce6621a0833836533e5fdd61999082d2eaeacc10a4a",
    strip_prefix = "bazel-paq-1.0.0",
    url = "https://github.com/gregl83/bazel-paq/archive/refs/tags/v1.0.0.tar.gz",
)
load("@bazel_paq//:deps.bzl", "bazel_paq_dependencies")
bazel_paq_dependencies()

local_repository(
    name = "directory_builder",
    path = "packages/npm/directory-builder",
)