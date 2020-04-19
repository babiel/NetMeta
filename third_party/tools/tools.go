package tools

// Static imports for command-line dependencies we build from source.

import (
	_ "cuelang.org/go/cmd/cue"
	_ "github.com/bazelbuild/bazelisk"
)

// Static imports for Cue definitions

import (
	_ "k8s.io/api"
	_ "k8s.io/apiextensions-apiserver"
)
