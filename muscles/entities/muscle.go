package entities

type Muscle struct {
	ID            int          `json:"_id"`
	NameLatin     string       `json:"name_latin"`
	Names         []MuscleName `json:"names"`
	Image         string       `json:"image"`
	MuscleGroupId string       `json:"muscle_group_id"`
}
