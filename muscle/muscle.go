package muscle

import (
	"pulpout.com/muscle_group"
)

type MuscleGroup = muscle_group.MuscleGroup

type Muscle struct {
	ID            uint
	Name          string
	NameLatin     string
	MuscleGroupId string
	MuscleGroup   MuscleGroup
}
