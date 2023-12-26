package database

import (
	"context"
	"database/sql"
	"fmt"
	"log"

	_ "github.com/lib/pq"
	"pulpout.com/muscle"
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

	rows, err := db.Query("SELECT * FROM muscle_group")

	if err != nil {
		fmt.Println("Error: ", err)
		return nil, err
	}

	var muscleGroups []muscle.MuscleGroup

	for rows.Next() {
		var muscleGroup muscle.MuscleGroup
		if err := rows.Scan(&muscleGroup.Id, &muscleGroup.Name, &muscleGroup.NameLatin); err != nil {
			log.Println(err.Error())
		}

		fmt.Println("Muscle Groups: ", muscleGroup)

		muscleGroups = append(muscleGroups, muscleGroup)
	}

	return db, nil
}
