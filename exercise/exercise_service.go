package exercise

func GetExercises() []Exercise {
	var entities []ExerciseEntity = SelectExercises()
	return createExercisesFromExerciseEntities(entities)
}

func GetExercisesOfWorkoutSchedule(workoutScheduleId uint) []Exercise {
	var entities []ExerciseEntity = SelectExercisesOfWorkoutSchedule(workoutScheduleId)
	return createExercisesFromExerciseEntities(entities)
}

