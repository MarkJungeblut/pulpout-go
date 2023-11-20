package exercises

import (
	. "pulpout.com/equipment/entities"
	. "pulpout.com/muscles/entities"
	"time"
)

type Exercise struct {
	ID           int                   `json:"_id"`
	Names        []ExerciseName        `json:"names"`
	Descriptions []ExerciseDescription `json:"descriptions"`
	CreatedAt    time.Time             `json:"created_at"`
	UpdatedAt    time.Time             `json:"updated_at"`
	MuscleGroup  []MuscleGroup         `json:"muscles"`
	Equipment    []Equipment           `json:"equipment"`
}
