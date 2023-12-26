package utils

import "os"

func ReadFileContent(path string) string {
	file, err := os.ReadFile(path)

	if err != nil {
		panic(err)
	}

	return string(file)
}
