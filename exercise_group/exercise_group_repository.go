package exercise_group

import (
	database "pulpout.com/database/postgres"
	"pulpout.com/utils"
)

func SelectExerciseGroups() []ExerciseGroup {
	db, err := database.InitDatabase()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./exercise_group/sql/select_exercise_group.sql")

	utils.HandleError(err)

	rows, err := db.Query(content)

	utils.HandleError(err)

	var exerciseGroups []ExerciseGroup

	for rows.Next() {
		var exerciseGroup ExerciseGroup
		err := rows.Scan(&exerciseGroup.Id, &exerciseGroup.Name, &exerciseGroup.CreatedAt, &exerciseGroup.UpdatedAt)
		utils.HandleError(err)
		exerciseGroups = append(exerciseGroups, exerciseGroup)
	}

	db.Close()

	return exerciseGroups
}

func CountExerciseGroupsWithoutWorkoutType() uint {
	db, err := database.InitDatabase()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./exercise_group/sql/count_exercise_group_without_workout_type.sql")

	utils.HandleError(err)

	row := db.QueryRow(content)

	var count uint
	err = row.Scan(&count)

	utils.HandleError(err)

	return count
}

func CountExerciseGroups() uint {
	db, err := database.InitDatabase()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./exercise_group/sql/count_exercise_group.sql")

	utils.HandleError(err)

	row := db.QueryRow(content)

	var count uint
	err = row.Scan(&count)

	utils.HandleError(err)

	return count
}
