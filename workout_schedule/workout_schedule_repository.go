package workout_schedule

import (
	database "pulpout.com/database/postgres"
	"pulpout.com/utils"
)

func SelectWorkoutSchedules() []WorkoutSchedule {
	db, err := database.InitDatabase()

	defer func() {
		db.Close()
	}()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./workout_schedule/sql/select_workout_schedule.sql")

	utils.HandleError(err)

	rows, err := db.Query(content)

	utils.HandleError(err)

	var workoutSchedules []WorkoutSchedule = make([]WorkoutSchedule, 0)

	for rows.Next() {
		var workoutSchedule WorkoutSchedule = NewWorkoutSchedule()
		err := rows.Scan(&workoutSchedule.Id, &workoutSchedule.Name, &workoutSchedule.Description, &workoutSchedule.Notes, &workoutSchedule.CreatedAt, &workoutSchedule.UpdatedAt)
		utils.HandleError(err)
		workoutSchedules = append(workoutSchedules, workoutSchedule)
	}

	return workoutSchedules
}

func SelectWorkoutScheduleById(id uint) []WorkoutSchedule {

	db, err := database.InitDatabase()

	defer func() {
		db.Close()
	}()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./workout_schedule/sql/select_workout_schedule_by_id.sql")

	utils.HandleError(err)

	rows, err := db.Query(content, id)

	utils.HandleError(err)

	var workoutSchedules []WorkoutSchedule

	for rows.Next() {
		var workoutSchedule WorkoutSchedule = NewWorkoutSchedule()
		err := rows.Scan(
			&workoutSchedule.Id,
			&workoutSchedule.Name,
			&workoutSchedule.Description,
			&workoutSchedule.Notes,
			&workoutSchedule.CreatedAt,
			&workoutSchedule.UpdatedAt)
		utils.HandleError(err)
		workoutSchedules = append(workoutSchedules, workoutSchedule)
	}

	return workoutSchedules
}

func InsertWorkoutSchedule(workoutSchedule WorkoutSchedule) (WorkoutSchedule, error) {

	db, err := database.InitDatabase()

	defer func() {
		db.Close()
	}()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./workout_schedule/sql/insert_workout_schedule.sql")

	utils.HandleError(err)

	tx, err := db.Begin()

	utils.HandleError(err)

	defer func() {
		if err != nil {
			tx.Rollback()
		}

		err = tx.Commit()
	}()

	var workoutScheduleId uint

	err = db.QueryRow(content, workoutSchedule.Name, workoutSchedule.Description, workoutSchedule.Notes).Scan(&workoutScheduleId)

	utils.HandleError(err)

	content, err = utils.ReadFileContent("./workout_schedule/sql/insert_workout_schedule_exercise.sql")

	for _, exercise := range workoutSchedule.Exercises {
		_, err := db.Exec(content, workoutScheduleId, exercise.Id)

		utils.HandleError(err)
	}

	workoutSchedule.Id = workoutScheduleId

	return workoutSchedule, nil
}
