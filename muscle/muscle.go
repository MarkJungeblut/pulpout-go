package muscle

import (
	"pulpout.com/muscle_group"
)

type MuscleGroup = muscle_group.MuscleGroup

type Muscle struct {
	Id            uint
	Name          string
	NameLatin     string
	MuscleGroupId uint
	MuscleGroup   MuscleGroup
}
