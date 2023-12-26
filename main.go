package main

import (
	"fmt"

	"pulpout.com/database/postgres"
	"pulpout.com/utils"
)

func main() {
	// r := retrier.New(retrier.ConstantBackoff(3, 100*time.Millisecond), nil)
	// var mongoDb *mongo.Database

	// err := r.Run(func() error {
	// 	// do some work
	// 	var err error
	// 	err, mongoDb = database.InitDatabase()
	// 	return err
	// })

	// if err != nil {
	// 	fmt.Print("Cannot establish connection to database")
	// 	// TODO: Monitoring via Grafana.
	// }

	// doSomething(mongoDb)

	database.InitDatabase()

	var content string = utils.ReadFileContent("./resources/sql/muscle/select_muscle.sql")

	fmt.Println(content)
	SetupRouter()
}
