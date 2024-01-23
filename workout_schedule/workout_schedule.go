package workout_schedule

import "pulpout.com/exercise"

type WorkoutSchedule struct {
	Id          uint
	Name        string
	Description string
	Notes       string
	Exercises   []exercise.Exercise
}

func NewWorkoutSchedule() WorkoutSchedule {
	return WorkoutSchedule{
		Exercises: make([]exercise.Exercise, 0), // Initialize the Advices slice with make
	}
}
