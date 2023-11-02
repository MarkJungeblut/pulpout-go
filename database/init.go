package database

import (
	"context"
	"fmt"
	. "go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"log"
	"time"
)

func InitDatabase() (error, *Database) {
	// TODO: Connection string from environment
	connectionString := "mongodb://localhost:27017"

	// Create a MongoDB client
	log.Print(fmt.Sprintf("Initializing connection to %s", connectionString))
	// TODO: Set Timeout from env
	client, err := Connect(context.Background(), options.Client().ApplyURI(connectionString), options.Client().SetTimeout(time.Second*10))
	if err != nil {
		return err, nil
	}

	err = client.Ping(context.Background(), nil)
	if err != nil {
		return err, nil
	}

	// TODO: Database name from environment
	database := client.Database("pulpout")

	database.Collection("languages")
	database.Collection("equipment")
	database.Collection("muscle_groups")
	database.Collection("muscles")
	database.Collection("exercises")
	return nil, database
}
