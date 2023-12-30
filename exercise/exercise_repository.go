package exercise

import (
	database "pulpout.com/database/postgres"
	"pulpout.com/utils"
)

func CountExercisesWithoutEquipment() uint {
	db, err := database.InitDatabase()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./exercise/sql/count_exercise_without_equipment.sql")

	utils.HandleError(err)

	row := db.QueryRow(content)

	var count uint
	err = row.Scan(&count)

	utils.HandleError(err)

	return count
}

func CountExercises() uint {
	db, err := database.InitDatabase()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./exercise/sql/count_exercise.sql")

	utils.HandleError(err)

	row := db.QueryRow(content)

	var count uint
	err = row.Scan(&count)

	utils.HandleError(err)

	return count
}
