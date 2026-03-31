package main

import (
	"fmt"
	"geomcli/internal/cli"
	"os"
)

func main() {
	app := cli.NewApp()
	if err := app.Run(os.Args[1:]); err != nil {
		fmt.Fprintln(os.Stderr, "error:", err)
		os.Exit(1)
	}

	fmt.Println("app was run")
}