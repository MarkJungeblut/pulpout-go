package entities

import (
	"time"
)

type Exercise struct {
	ID           int                   `json:"_id"`
	Names        []ExerciseName        `json:"names"`
	Descriptions []ExerciseDescription `json:"descriptions"`
	CreatedAt    time.Time             `json:"created_at"`
	UpdatedAt    time.Time             `json:"updated_at"`
}
