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

	return exerciseGroups
}
