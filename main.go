package main

import (
	"golang.org/x/tools/go/analysis/singlechecker"

	"github.com/ryo-yamaoka/paralleltest/pkg/paralleltest"
)

func main() {
	singlechecker.Main(paralleltest.Analyzer)
}
