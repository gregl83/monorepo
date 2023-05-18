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
load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories", "yarn_install")

node_repositories(
    node_version = "17.9.1",
    yarn_version = "1.22.19",
)

local_repository(
    name = "dir_build",
    path = "dir-build",
)

# Create the repositories for the Node.js dependencies of the packages
#yarn_install(
#    name = "data_factory_npm",
#    package_json = "//data-factory:package.json",
#    yarn_lock = "//data-factory:yarn.lock",
#)