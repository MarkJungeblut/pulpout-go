package main

import (
	"fmt"
	"github.com/eapache/go-resiliency/retrier"
	"go.mongodb.org/mongo-driver/mongo"
	. "pulpout.com/database"
	"time"
)

func main() {
	r := retrier.New(retrier.ConstantBackoff(3, 100*time.Millisecond), nil)
	var database *mongo.Database

	err := r.Run(func() error {
		// do some work
		var err error
		err, database = InitDatabase()
		return err
	})

	if err != nil {
		fmt.Print("Cannot establish connection to database")
		// TODO: Monitoring via Grafana.
	}

	doSomething(database)
}

func doSomething(database *mongo.Database) {

}
