package exercise

import (
	database "pulpout.com/database/postgres"
	"pulpout.com/utils"
)

func SelectExercises() []Exercise {
	db, err := database.InitDatabase()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./exercise/sql/select_exercise.sql")

	utils.HandleError(err)

	rows, err := db.Query(content)

	utils.HandleError(err)

	var exercises []Exercise

	for rows.Next() {
		var exercise Exercise
		err := rows.Scan(&exercise.Id,
			&exercise.Name,
			&exercise.Description,
			&exercise.CreatedAt,
			&exercise.UpdatedAt,
			&exercise.ExerciseGroupId,
			&exercise.ExerciseGroup.Id,
			&exercise.ExerciseGroup.Name,
			&exercise.ExerciseGroup.CreatedAt,
			&exercise.ExerciseGroup.UpdatedAt)

		utils.HandleError(err)
		exercises = append(exercises, exercise)
	}

	return exercises
}

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
