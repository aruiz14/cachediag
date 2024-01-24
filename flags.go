package main

import (
	"flag"
	"fmt"
)

const (
	userContextPreset = "usercontext"
)

var allowedPresets = []string{userContextPreset}

type opts struct {
	kubeconfig string
	preset     string
}

func bindFlags(fs *flag.FlagSet) *opts {
	var o opts
	fs.StringVar(&o.preset, "preset", "usercontext", fmt.Sprintf("Configures the mode to emulate (different resources watched). Allowed values: %s", allowedPresets))
	return &o
}
