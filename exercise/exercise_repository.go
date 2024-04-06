package exercise

import (
	"database/sql"

	database "pulpout.com/database/postgres"
	"pulpout.com/utils"
)

func SelectExercises() []ExerciseEntity {
	db, err := database.InitDatabase()

	defer func() {
		db.Close()
	}()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./exercise/sql/select_exercise.sql")

	utils.HandleError(err)

	rows, err := db.Query(content)

	utils.HandleError(err)

	var exercises []ExerciseEntity

	for rows.Next() {
		exercise, err := scanExerciseEntity(rows)
		utils.HandleError(err)
		exercises = append(exercises, exercise)
	}

	return exercises
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

func SelectExercisesOfWorkoutSchedule(workoutScheduleId uint) []ExerciseEntity {
	db, err := database.InitDatabase()

	defer func() {
		db.Close()
	}()

	utils.HandleError(err)

	content, err := utils.ReadFileContent("./exercise/sql/select_exercise_of_workout_schedule.sql")

	utils.HandleError(err)

	rows, err := db.Query(content, workoutScheduleId)

	utils.HandleError(err)

	var exercises []ExerciseEntity

	for rows.Next() {
		exercise, err := scanExerciseEntity(rows)
		utils.HandleError(err)
		exercises = append(exercises, exercise)
	}

	return exercises
}

func scanExerciseEntity(rows *sql.Rows) (ExerciseEntity, error) {
	var exercise ExerciseEntity
	err := rows.Scan(&exercise.Id,
		&exercise.Name,
		&exercise.Description,
		&exercise.ExerciseGroupId,
		&exercise.ExerciseGroupName,
		&exercise.MuscleId,
		&exercise.MuscleName,
		&exercise.MuscleNameLatin,
		&exercise.MuscleGroupId,
		&exercise.MuscleGroupName,
		&exercise.MuscleGroupNameLatin,
		&exercise.EquipmentId,
		&exercise.EquipmentName,
		&exercise.AdviceId,
		&exercise.AdviceName,
	)

	return exercise, err
}
