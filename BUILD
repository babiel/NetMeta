load("@bazel_gazelle//:def.bzl", "gazelle")
load("@io_bazel_rules_go//go:def.bzl", "go_path", "nogo")

# gazelle:prefix github.com/leoluk/NetMeta
# gazelle:exclude third_party/tools
gazelle(name = "gazelle")

# Shortcut for the Go SDK
alias(
    name = "go",
    actual = "@go_sdk//:bin/go",
    visibility = ["//visibility:public"],
)
