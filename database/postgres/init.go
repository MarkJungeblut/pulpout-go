package database

import (
	"context"
	"database/sql"
	"fmt"

	_ "github.com/lib/pq"
)

func InitDatabase() (*sql.DB, error) {
	connectionString := "postgresql://localhost:5432/pulpout?user=pulpout&password=pulpout&sslmode=disable"

	db, err := sql.Open("postgres", connectionString)

	if err != nil {
		fmt.Println("Error: ", err)
		return nil, err
	}

	err = db.PingContext(context.Background())

	if err != nil {
		fmt.Println("Error: ", err)
		return nil, err
	}

	return db, nil
}
