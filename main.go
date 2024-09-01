package main

import (
    "github.com/neovim/go-client/nvim/plugin"
)

func hello(args []string) (string, error) {
    return "Hello, " + args[0] + "!", nil
}

func main() {
    plugin.Main(func(p *plugin.Plugin) error {
        p.HandleFunction(&plugin.FunctionOptions{Name: "Hello"}, hello)
        return nil
    })
}
