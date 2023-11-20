package main

import (
	"fmt"
	"github.com/eapache/go-resiliency/retrier"
	"github.com/gin-gonic/gin"
	"go.mongodb.org/mongo-driver/mongo"
	. "pulpout.com/database"
	. "pulpout.com/exercises"
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

	router := gin.Default()
	router.GET("/exercises", GetExercises)

	_ = router.Run("localhost:8080")
}

func doSomething(database *mongo.Database) {
	fmt.Print("Connected to database :)")
}
