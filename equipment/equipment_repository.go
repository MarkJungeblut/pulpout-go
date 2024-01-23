package equipment

import (
	database "pulpout.com/database/postgres"
	"pulpout.com/utils"
)

func SelectEquipment() []Equipment {
	db, err := database.InitDatabase()

	defer func() {
		db.Close()
	}()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./equipment/sql/select_equipment.sql")

	utils.HandleError(err)

	rows, err := db.Query(content)

	utils.HandleError(err)

	var equipments []Equipment

	for rows.Next() {
		var equipment Equipment
		err := rows.Scan(&equipment.Id, &equipment.Name)
		utils.HandleError(err)
		equipments = append(equipments, equipment)
	}

	return equipments
}
