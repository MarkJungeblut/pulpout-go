package exercise

import (
	"pulpout.com/advice"
	"pulpout.com/equipment"
	"pulpout.com/exercise_group"
	"pulpout.com/muscle"
)

type Exercise struct {
	Id            uint
	Name          string
	Description   string
	ExerciseGroup exercise_group.ExerciseGroup
	Muscles       []muscle.Muscle
	Equipments    []equipment.Equipment
	Advices       []advice.Advice
}

func NewExercise() Exercise {
	return Exercise{
		Muscles:    make([]muscle.Muscle, 0),
		Equipments: make([]equipment.Equipment, 0),
		Advices:    make([]advice.Advice, 0),
	}
}
