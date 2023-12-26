package main

import (
	"fmt"
	"time"

	"github.com/eapache/go-resiliency/retrier"
	"go.mongodb.org/mongo-driver/mongo"
	"pulpout.com/database"
)

func main() {
	r := retrier.New(retrier.ConstantBackoff(3, 100*time.Millisecond), nil)
	var mongoDb *mongo.Database

	err := r.Run(func() error {
		// do some work
		var err error
		err, mongoDb = database.InitDatabase()
		return err
	})

	if err != nil {
		fmt.Print("Cannot establish connection to database")
		// TODO: Monitoring via Grafana.
	}

	doSomething(mongoDb)

	SetupRouter()
}

func doSomething(database *mongo.Database) {
	fmt.Print("Connected to database :)")
}
