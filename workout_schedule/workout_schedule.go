package workout_schedule

import (
	"time"

	"pulpout.com/exercise"
)

type WorkoutSchedule struct {
	Id          uint
	Name        string
	Description string
	Notes       string
	Exercises   []exercise.Exercise
	CreatedAt   time.Time
	UpdatedAt   time.Time
}

func NewWorkoutSchedule() WorkoutSchedule {
	return WorkoutSchedule{
		Exercises: make([]exercise.Exercise, 0), // Initialize the Advices slice with make
	}
}
