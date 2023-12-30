package exercise

import (
	"time"

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
}
