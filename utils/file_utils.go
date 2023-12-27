package utils

import "os"

func ReadFileContent(path string) (string, error) {
	file, err := os.ReadFile(path)

	if err != nil {
		return "", err
	}

	return string(file), nil
}
