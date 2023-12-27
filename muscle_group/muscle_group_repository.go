package muscle_group

import (
	database "pulpout.com/database/postgres"
	"pulpout.com/utils"
)

func SelectMuscleGroups() []MuscleGroup {

	db, err := database.InitDatabase()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./muscle_group/sql/select_muscle_group.sql")

	utils.HandleError(err)

	rows, err := db.Query(content)

	utils.HandleError(err)

	var muscleGroups []MuscleGroup

	for rows.Next() {
		var muscleGroup MuscleGroup
		err := rows.Scan(&muscleGroup.Id, &muscleGroup.Name, &muscleGroup.NameLatin)
		utils.HandleError(err)
		muscleGroups = append(muscleGroups, muscleGroup)
	}

	return muscleGroups
}
