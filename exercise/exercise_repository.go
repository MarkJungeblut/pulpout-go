package exercise

import (
	"pulpout.com/advice"
	database "pulpout.com/database/postgres"
	"pulpout.com/utils"
)

func SelectExercises() []Exercise {
	db, err := database.InitDatabase()

	defer func() {
		db.Close()
	}()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./exercise/sql/select_exercise.sql")

	utils.HandleError(err)

	rows, err := db.Query(content)

	utils.HandleError(err)

	var exercises []Exercise

	var advices []advice.Advice = advice.SelectAdvices()

	for rows.Next() {
		var exercise Exercise = NewExercise()
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

	return assignAdvicesToExercises(exercises, advices)
}

func CountExercises() uint {
	db, err := database.InitDatabase()

	defer func() {
		db.Close()
	}()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./exercise/sql/count_exercise.sql")

	utils.HandleError(err)

	row := db.QueryRow(content)

	var count uint
	err = row.Scan(&count)

	utils.HandleError(err)

	return count
}

func CountExercisesWithoutEquipment() uint {
	db, err := database.InitDatabase()

	defer func() {
		db.Close()
	}()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./exercise/sql/count_exercise_without_equipment.sql")

	utils.HandleError(err)

	row := db.QueryRow(content)

	var count uint
	err = row.Scan(&count)

	utils.HandleError(err)

	return count
}

func assignAdvicesToExercises(exercises []Exercise, advices []advice.Advice) []Exercise {
	exerciseAdvices := make(map[uint][]advice.Advice)

	for _, advice := range advices {
		exerciseAdvices[advice.ExerciseId] = append(exerciseAdvices[advice.ExerciseId], advice)
	}

	for i, exercise := range exercises {

		var advices = exerciseAdvices[exercise.Id]

		if advices != nil {
			exercises[i].Advices = advices
		}
	}

	return exercises
}

func SelectExercisesOfWorkoutSchedule(workoutScheduleId uint) []Exercise {
	db, err := database.InitDatabase()

	defer func() {
		db.Close()
	}()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./exercise/sql/select_exercise_of_workout_schedule.sql")

	utils.HandleError(err)

	rows, err := db.Query(content, workoutScheduleId)

	utils.HandleError(err)

	var exercises []Exercise

	var advices []advice.Advice = advice.SelectAdvices()

	for rows.Next() {
		var exercise Exercise = NewExercise()
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

	return assignAdvicesToExercises(exercises, advices)
}
