package muscle

import (
	database "pulpout.com/database/postgres"
	"pulpout.com/utils"
)

func SelectMuscles() []Muscle {
	db, err := database.InitDatabase()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./muscle/sql/select_muscle.sql")

	utils.HandleError(err)

	rows, err := db.Query(content)

	utils.HandleError(err)

	var muscles []Muscle

	for rows.Next() {
		var muscle Muscle
		err := rows.Scan(&muscle.Id,
			&muscle.Name,
			&muscle.NameLatin,
			&muscle.MuscleGroupId,
			&muscle.MuscleGroup.Id,
			&muscle.MuscleGroup.Name,
			&muscle.MuscleGroup.NameLatin)

		utils.HandleError(err)
		muscles = append(muscles, muscle)
	}

	return muscles
}
