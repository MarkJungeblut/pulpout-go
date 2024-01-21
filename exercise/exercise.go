package exercise

import (
	"time"

	"pulpout.com/advice"
	"pulpout.com/exercise_group"
)

type Exercise struct {
	Id              uint
	Name            string
	Description     string
	CreatedAt       time.Time
	UpdatedAt       time.Time
	ExerciseGroupId string
	ExerciseGroup   exercise_group.ExerciseGroup
	Advices         []advice.Advice
}

func NewExercise() Exercise {
	return Exercise{
		Advices: make([]advice.Advice, 0), // Initialize the Advices slice with make
	}
}
