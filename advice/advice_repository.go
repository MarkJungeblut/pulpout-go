package advice

import (
	database "pulpout.com/database/postgres"
	"pulpout.com/utils"
)

func SelectAdvices() []Advice {

	db, err := database.InitDatabase()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./advice/sql/select_advice.sql")

	utils.HandleError(err)

	rows, err := db.Query(content)

	utils.HandleError(err)

	var advices []Advice

	for rows.Next() {
		var advice Advice
		err := rows.Scan(&advice.Id, &advice.Name, &advice.ExerciseId)
		utils.HandleError(err)
		advices = append(advices, advice)
	}

	return advices
}
