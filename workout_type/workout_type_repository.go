package workout_type

import (
	database "pulpout.com/database/postgres"
	"pulpout.com/utils"
)

func SelectWorkoutTypes() []WorkoutType {

	db, err := database.InitDatabase()

	defer func() {
		db.Close()
	}()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./workout_type/sql/select_workout_type.sql")

	utils.HandleError(err)

	rows, err := db.Query(content)

	utils.HandleError(err)

	var workoutTypes []WorkoutType

	for rows.Next() {
		var workoutType WorkoutType
		err := rows.Scan(&workoutType.Id, &workoutType.Name, &workoutType.Description)
		utils.HandleError(err)
		workoutTypes = append(workoutTypes, workoutType)
	}

	return workoutTypes
}
