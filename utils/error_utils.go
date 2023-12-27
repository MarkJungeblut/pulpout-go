package utils

import "fmt"

func HandleError(err error) error {
	if err != nil {
		fmt.Println("Error: ", err)
		panic(err)
	}

	return err
}
