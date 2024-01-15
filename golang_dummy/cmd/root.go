package cmd

import "fmt"

type VersionInfoStruct struct {
	Version   string
	GitTag    string
	GitCommit string
	BuildTime string
}

// Build tags set with -ldflags. Cannot set struct fields directly.
var (
	BuildGitTag    string
	BuildGitCommit string
	BuildBuildTime string
)

var VersionInfo = VersionInfoStruct{
	Version:   "0.0.1",
	GitTag:    BuildGitTag,
	GitCommit: BuildGitCommit,
	BuildTime: BuildBuildTime,
}

func VersionInfoPrint() {
	fmt.Printf("golang_dummy:%+v\n", VersionInfo)
}
