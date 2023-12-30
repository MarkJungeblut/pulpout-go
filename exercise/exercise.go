package exercise

import "time"

type Exercise struct {
	Id        uint
	Name      string
	Description string
	CreatedAt time.Time
	UpdatedAt time.Time
}
