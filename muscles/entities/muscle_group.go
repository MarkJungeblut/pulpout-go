package entities

type MuscleGroup struct {
	ID        int               `json:"_id"`
	NameLatin string            `json:"name_latin"`
	Names     []MuscleGroupName `json:"names"`
	Image     string            `json:"image"`
}
